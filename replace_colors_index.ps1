$content = Get-Content 'index.html' -Raw

# Hex replacements
$content = $content -replace '(?i)#fff9c4', '#fff0f5'
$content = $content -replace '(?i)#fff176', '#ffd1dc'
$content = $content -replace '(?i)#ffee58', '#ffb6c1'
$content = $content -replace '(?i)#f9a825', '#ff1493'
$content = $content -replace '(?i)#e6a800', '#ff69b4'
$content = $content -replace '(?i)#c4842d', '#ff1493'
$content = $content -replace '(?i)#ffd54f', '#ffb6c1'
$content = $content -replace '(?i)#ffca28', '#ff69b4'
$content = $content -replace '(?i)#ffc107', '#ff1493'
$content = $content -replace '(?i)#ffb300', '#c71585'
$content = $content -replace '(?i)#8B6914', '#8b005d'
$content = $content -replace '(?i)#C4A23A', '#c71585'
$content = $content -replace '(?i)#5a4500', '#5a0022'
$content = $content -replace '(?i)#4a3800', '#4a001a'
$content = $content -replace '(?i)#b87a00', '#c71585'
$content = $content -replace '(?i)#ffe082', '#ffb6c1'
$content = $content -replace '(?i)#8a7200', '#c71585'
$content = $content -replace '(?i)#c89600', '#ff1493'

# RGB/RGBA replacements
$content = $content -replace '230, 168, 0', '255, 105, 180'
$content = $content -replace '255, 249, 196', '255, 240, 245'
$content = $content -replace '200, 150, 0', '255, 20, 147'
$content = $content -replace '255, 235, 59', '255, 182, 193'
$content = $content -replace '139, 105, 20', '139, 20, 80'
$content = $content -replace '180,\s*140,\s*60', '180, 20, 100'
$content = $content -replace '120, 80, 20', '120, 20, 60'
$content = $content -replace '255, 180, 100', '255, 105, 180'
$content = $content -replace '255, 200, 100', '255, 182, 193'
$content = $content -replace '255, 193, 7', '255, 20, 147'

Set-Content 'index.html' $content -Encoding UTF8
Write-Output "Replacement complete for index.html."
