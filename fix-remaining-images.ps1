Set-Location "c:\Users\colle\Downloads\Top Dogg Liquors\Top Dogg Liquors\images"

$renamed = 0

# File 1: Rosé wine page.png
$file1 = Get-ChildItem | Where-Object { $_.Name -like "*Ros*wine*" }
if ($file1) {
    Rename-Item $file1.FullName "rose-wine.png"
    Write-Host "Renamed: $($file1.Name) -> rose-wine.png"
    $renamed++
}

# File 2: Sparkling & Champagne wine page.png
$file2 = Get-ChildItem | Where-Object { $_.Name -like "*Sparkling*Champagne*wine*" }
if ($file2) {
    Rename-Item $file2.FullName "sparkling-champagne-wine.png"
    Write-Host "Renamed: $($file2.Name) -> sparkling-champagne-wine.png"
    $renamed++
}

# File 3: Hard Cider Collection Page.png
$file3 = Get-ChildItem | Where-Object { $_.Name -like "*Hard*Cider*Collection*" }
if ($file3) {
    Rename-Item $file3.FullName "hard-cider-collection.png"
    Write-Host "Renamed: $($file3.Name) -> hard-cider-collection.png"
    $renamed++
}

Write-Host ""
Write-Host "Total files renamed: $renamed" -ForegroundColor Green
