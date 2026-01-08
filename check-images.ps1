# Comprehensive Image Check Script

$imagesFolder = "c:\Users\colle\Downloads\Top Dogg Liquors\Top Dogg Liquors\images"
$projectRoot = "c:\Users\colle\Downloads\Top Dogg Liquors\Top Dogg Liquors"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  IMAGE AUDIT - CHECKING ALL REFERENCES" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Get all existing image files
$existingFiles = Get-ChildItem -Path $imagesFolder -File | Select-Object -ExpandProperty Name

Write-Host "[1] Checking HTML Image References..." -ForegroundColor Yellow
Write-Host ""

# Extract all image references from HTML
$htmlFiles = Get-ChildItem -Path $projectRoot -Filter "*.html"
$missingImages = @()
$foundImages = @()
$totalReferences = 0

foreach ($htmlFile in $htmlFiles) {
    $content = Get-Content $htmlFile.FullName -Raw
    
    # Find all src="images/..." and srcset="images/..."
    $matches = [regex]::Matches($content, '(?:src|srcset)="images/([^"]+)"')
    
    foreach ($match in $matches) {
        $totalReferences++
        $imageName = $match.Groups[1].Value
        
        if ($existingFiles -contains $imageName) {
            $foundImages += "$($htmlFile.Name): $imageName"
        } else {
            $missingImages += "$($htmlFile.Name): images/$imageName"
            Write-Host "  ✗ MISSING: $($htmlFile.Name) -> images/$imageName" -ForegroundColor Red
        }
    }
    
    # Check background-image URLs in inline styles
    $bgMatches = [regex]::Matches($content, "background-image:\s*url\('images/([^']+)'\)")
    foreach ($match in $bgMatches) {
        $totalReferences++
        $imageName = $match.Groups[1].Value
        
        if ($existingFiles -contains $imageName) {
            $foundImages += "$($htmlFile.Name): $imageName (background)"
        } else {
            $missingImages += "$($htmlFile.Name): images/$imageName (background)"
            Write-Host "  ✗ MISSING: $($htmlFile.Name) -> images/$imageName (background)" -ForegroundColor Red
        }
    }
}

Write-Host ""
Write-Host "[2] Checking CSS Background Images..." -ForegroundColor Yellow
Write-Host ""

$cssFiles = Get-ChildItem -Path "$projectRoot\css" -Filter "*.css"

foreach ($cssFile in $cssFiles) {
    $content = Get-Content $cssFile.FullName -Raw
    
    # Find all url('../images/...')
    $matches = [regex]::Matches($content, "url\(['\"]?\.\.\/images\/([^'\)]+)['\"]?\)")
    
    foreach ($match in $matches) {
        $totalReferences++
        $imageName = $match.Groups[1].Value
        
        if ($existingFiles -contains $imageName) {
            $foundImages += "$($cssFile.Name): $imageName"
        } else {
            $missingImages += "$($cssFile.Name): ../images/$imageName"
            Write-Host "  ✗ MISSING: $($cssFile.Name) -> ../images/$imageName" -ForegroundColor Red
        }
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  AUDIT RESULTS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "Total Image References Found: $totalReferences" -ForegroundColor White
Write-Host "Images Found: $($foundImages.Count)" -ForegroundColor Green
Write-Host "Images Missing: $($missingImages.Count)" -ForegroundColor Red
Write-Host ""

if ($missingImages.Count -eq 0) {
    Write-Host "✅ SUCCESS: All image references are valid!" -ForegroundColor Green
} else {
    Write-Host "❌ ISSUES FOUND: $($missingImages.Count) missing images" -ForegroundColor Red
    Write-Host ""
    Write-Host "Missing Images:" -ForegroundColor Red
    $missingImages | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
}

Write-Host ""
Write-Host "[3] Checking for Images WITHOUT WebP Versions..." -ForegroundColor Yellow
Write-Host ""

$pngFiles = $existingFiles | Where-Object { $_ -match '\.png$' -and $_ -ne 'logo.png' }
$missingWebP = @()

foreach ($png in $pngFiles) {
    $webpName = $png -replace '\.png$', '.webp'
    if ($existingFiles -notcontains $webpName) {
        $missingWebP += $png
        Write-Host "  ⚠ Missing WebP: $png (no $webpName)" -ForegroundColor Yellow
    }
}

$jpgFiles = $existingFiles | Where-Object { $_ -match '\.jpg$' }
foreach ($jpg in $jpgFiles) {
    $webpName = $jpg -replace '\.jpg$', '.webp'
    if ($existingFiles -notcontains $webpName) {
        $missingWebP += $jpg
        Write-Host "  ⚠ Missing WebP: $jpg (no $webpName)" -ForegroundColor Yellow
    }
}

Write-Host ""
if ($missingWebP.Count -eq 0) {
    Write-Host "✅ All PNG/JPG files have WebP versions!" -ForegroundColor Green
} else {
    Write-Host "⚠ $($missingWebP.Count) images missing WebP versions" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  AUDIT COMPLETE" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
