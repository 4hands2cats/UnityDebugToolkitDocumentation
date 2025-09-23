# Initialise une liste vide
$content = ""

# Liste des fichiers dans l’ordre
$files = @(
    "DocuHead.md",
    "README.md"
)

# Concatène tous les fichiers avec une ligne vide entre eux
foreach ($file in $files) {
    $content += "`r`n" + (Get-Content $file -Raw) + "`r`n"
}

# Écriture dans le fichier final
Set-Content -Value $content -Path "Documentation.md"

# Génération du PDF
md-to-pdf Documentation.md --config-file ../.md-to-pdf.json