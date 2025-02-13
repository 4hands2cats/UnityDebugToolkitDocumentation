const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();

    // Your Docsify site URL
    const docsUrl = 'http://localhost:3000';
    await page.goto(docsUrl, { waitUntil: 'networkidle2' });

    // Extract all sidebar links
    const links = await page.evaluate(() =>
        [...document.querySelectorAll('.sidebar-nav a')].map(a => a.href)
    );

    // PDF options
    const pdfOptions = {
        path: 'full-docs.pdf',
        format: 'A4',
        printBackground: true,
        margin: { top: '20mm', bottom: '20mm', left: '15mm', right: '15mm' }
    };

    let allPagesContent = '';

    for (const link of links) {
        await page.goto(link, { waitUntil: 'networkidle2' });

        // Wait for the footer `<blockquote>` to load
        await page.waitForSelector('blockquote', { timeout: 3000 }).catch(() => {});

        // Remove sidebar, default footer, and all Docsify `_footer.md` footers
        await page.evaluate(() => {
            const sidebar = document.querySelector('.sidebar');
            const defaultFooter = document.querySelector('footer'); // Standard footer
            const docsifyFooters = document.querySelectorAll('blockquote'); // Docsify `_footer.md`

            if (sidebar) sidebar.style.display = 'none';
            if (defaultFooter) defaultFooter.remove();
            docsifyFooters.forEach(footer => footer.remove()); // Remove all footers
        });

        // Append formatted page content
        const pageContent = await page.evaluate(() => document.body.innerHTML);
        allPagesContent += pageContent + '\n\n';
    }

    // Set cleaned-up content to match the website's look
    await page.setContent(allPagesContent, { waitUntil: 'networkidle2' });

    // Generate the PDF
    await page.pdf(pdfOptions);

    await browser.close();
})();
