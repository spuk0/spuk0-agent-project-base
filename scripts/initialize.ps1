[CmdletBinding()]
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$ProjectName,

    [Parameter(Mandatory = $true)]
    [ValidatePattern('^[a-z0-9]+(?:-[a-z0-9]+)*$')]
    [string]$ProjectSlug,

    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$Description,

    [ValidateSet('lean-mvp', 'product-mvp', 'client-project')]
    [string]$Profile = 'lean-mvp',

    [ValidatePattern('^\d{4}-\d{2}-\d{2}$')]
    [string]$Date = (Get-Date -Format 'yyyy-MM-dd')
)

$ErrorActionPreference = 'Stop'
$repositoryRoot = Split-Path -Parent $PSScriptRoot
$thisScript = $MyInvocation.MyCommand.Path
$replacements = [ordered]@{
    '{{PROJECT_NAME}}' = $ProjectName
    '{{PROJECT_SLUG}}' = $ProjectSlug
    '{{PROJECT_DESCRIPTION}}' = $Description
    '{{PROJECT_PROFILE}}' = $Profile
    '{{DATE}}' = $Date
}

$extensions = @('.md', '.txt', '.json', '.yml', '.yaml', '.xml', '.props', '.targets')
$files = Get-ChildItem -LiteralPath $repositoryRoot -Recurse -File | Where-Object {
    $_.FullName -ne $thisScript -and
    $_.FullName -notmatch '[\\/]\.git[\\/]' -and
    $extensions -contains $_.Extension
}

foreach ($file in $files) {
    $content = Get-Content -LiteralPath $file.FullName -Raw
    $updated = $content

    foreach ($replacement in $replacements.GetEnumerator()) {
        $updated = $updated.Replace($replacement.Key, $replacement.Value)
    }

    if ($updated -ne $content) {
        Set-Content -LiteralPath $file.FullName -Value $updated -Encoding utf8NoBOM
    }
}

$remaining = Get-ChildItem -LiteralPath $repositoryRoot -Recurse -File | Where-Object {
    $_.FullName -ne $thisScript -and
    $_.FullName -notmatch '[\\/]\.git[\\/]'
} | Select-String -Pattern '{{PROJECT_NAME}}|{{PROJECT_SLUG}}|{{PROJECT_DESCRIPTION}}|{{PROJECT_PROFILE}}'

if ($remaining) {
    throw 'La inicialización terminó con marcadores de identidad sin resolver.'
}

Write-Output "Proyecto inicializado: $ProjectName ($ProjectSlug), perfil $Profile."
Write-Output 'Siguiente paso: completar docs/checklists/new-project.md y revisar AGENTS.md.'
