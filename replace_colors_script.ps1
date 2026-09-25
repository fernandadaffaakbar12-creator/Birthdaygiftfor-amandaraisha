$file = 'script.js'
$encoding = [System.Text.Encoding]::UTF8
$content = [System.IO.File]::ReadAllText((Resolve-Path $file).Path, $encoding)

# Replace scratch card background
$content = $content -replace '#FFF8E1', '#FFF0F5'

# Replace goldColors to pinkColors name
$content = $content -replace 'goldColors', 'pinkColors'

# Replace gold colors
$content = $content -replace 'rgba\(255,\s*215,\s*0,\s*0\.9\)', 'rgba(255, 105, 180, 0.9)'
$content = $content -replace 'rgba\(218,\s*165,\s*32,\s*0\.85\)', 'rgba(255, 20, 147, 0.85)'
$content = $content -replace 'rgba\(255,\s*193,\s*7,\s*0\.8\)', 'rgba(255, 182, 193, 0.8)'
$content = $content -replace 'rgba\(253,\s*216,\s*53,\s*0\.75\)', 'rgba(255, 192, 203, 0.75)'
$content = $content -replace 'rgba\(255,\s*235,\s*59,\s*0\.7\)', 'rgba(219, 112, 147, 0.7)'
$content = $content -replace 'rgba\(245,\s*127,\s*23,\s*0\.6\)', 'rgba(199, 21, 133, 0.6)'

[System.IO.File]::WriteAllText((Resolve-Path $file).Path, $content, $encoding)
Write-Output "Replacement complete for script.js."
