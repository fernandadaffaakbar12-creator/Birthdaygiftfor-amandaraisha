$files = @('style.css', 'index.html')
$encoding = [System.Text.Encoding]::UTF8

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText((Resolve-Path $file).Path, $encoding)

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
    $content = $content -replace '230,\s*168,\s*0', '255, 105, 180'
    $content = $content -replace '255,\s*249,\s*196', '255, 240, 245'
    $content = $content -replace '200,\s*150,\s*0', '255, 20, 147'
    $content = $content -replace '255,\s*235,\s*59', '255, 182, 193'
    $content = $content -replace '139,\s*105,\s*20', '139, 20, 80'
    $content = $content -replace '180,\s*140,\s*60', '180, 20, 100'
    $content = $content -replace '120,\s*80,\s*20', '120, 20, 60'
    $content = $content -replace '255,\s*180,\s*100', '255, 105, 180'
    $content = $content -replace '255,\s*200,\s*100', '255, 182, 193'
    $content = $content -replace '255,\s*193,\s*7', '255, 20, 147'

    [System.IO.File]::WriteAllText((Resolve-Path $file).Path, $content, $encoding)
}

Write-Output "Replacement complete."
