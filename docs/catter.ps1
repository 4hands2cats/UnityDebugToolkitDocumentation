# Initialise une liste vide
$content = ""

# Liste des fichiers dans l’ordre
$files = @(
    "README.md",
    "TableOfContents.md",
    "getting-started/introduction.md",
    "getting-started/installation.md",
    "getting-started/quick-start.md",
    "getting-started/demo.md",
    "features/console.md",
    "IngameConsole/custom_commands.md",
    "IngameConsole/staticCommands.md",
    "IngameConsole/CommandPrediction.md",
    "features/freecam.md",
    "features/gizmos.md",
    "features/metrics.md",
    "features/navmesh.md",
    "BugReport/bugReport.md",
    "BugReport/TrelloBoardSetUp.md",
    "BugReport/DiscordBoardSetUp.md",
    "BugReport/enablefeature.md",
    "BugReport/ReportABug.md",
    "apis/apis.md",
    "apis/collider_gizmos.md",
    "apis/raycastTo_gizmos.md",
    "apis/console.md",
    "about.md",
    "faq.md",
    "whatNext.md",
    "patchnote.md"
)

# Concatène tous les fichiers avec une ligne vide entre eux
foreach ($file in $files) {
    $content += "`r`n" + (Get-Content $file -Raw) + "`r`n"
}

# Écriture dans le fichier final
Set-Content -Value $content -Path "Documentation.md"

# Génération du PDF
md-to-pdf Documentation.md --config-file .md-to-pdf.json