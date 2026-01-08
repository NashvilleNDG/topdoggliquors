# Image Rename Script - Systematic Batch Renaming
# Execute this script to rename all image files according to the plan

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  IMAGE RENAME SCRIPT" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Change to images directory
Set-Location -Path "c:\Users\colle\Downloads\Top Dogg Liquors\Top Dogg Liquors\images"

$renamed = 0
$skipped = 0
$errors = 0

Write-Host "Starting image renaming process..." -ForegroundColor Yellow
Write-Host ""

# Phase 1: Hero Images
Write-Host "[PHASE 1] Hero Images" -ForegroundColor Green
if (Test-Path "Hero-image.png") {
    Rename-Item -Path "Hero-image.png" -NewName "hero-image.png"
    Write-Host "  ✓ Hero-image.png → hero-image.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Our-services-hero.png") {
    Rename-Item -Path "Our-services-hero.png" -NewName "services-hero.png"
    Write-Host "  ✓ Our-services-hero.png → services-hero.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Our-story-hero.png") {
    Rename-Item -Path "Our-story-hero.png" -NewName "about-hero.png"
    Write-Host "  ✓ Our-story-hero.png → about-hero.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 2: Collection Page Images - Wine
Write-Host ""
Write-Host "[PHASE 2a] Wine Collection Images" -ForegroundColor Green
if (Test-Path "red wine, wine page.png") {
    Rename-Item -Path "red wine, wine page.png" -NewName "red-wine.png"
    Write-Host "  ✓ red wine, wine page.png → red-wine.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "white wine, wine page.png") {
    Rename-Item -Path "white wine, wine page.png" -NewName "white-wine.png"
    Write-Host "  ✓ white wine, wine page.png → white-wine.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Rosé wine page.png") {
    Rename-Item -Path "Rosé wine page.png" -NewName "rose-wine.png"
    Write-Host "  ✓ Rosé wine page.png → rose-wine.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Sparkling & Champagne2 wine page.png") {
    Rename-Item -Path "Sparkling & Champagne2 wine page.png" -NewName "sparkling-champagne.png"
    Write-Host "  ✓ Sparkling & Champagne2 wine page.png → sparkling-champagne.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Organic wine page.png") {
    Rename-Item -Path "Organic wine page.png" -NewName "organic-wine.png"
    Write-Host "  ✓ Organic wine page.png → organic-wine.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Dessert & Fortified Wine page.png") {
    Rename-Item -Path "Dessert & Fortified Wine page.png" -NewName "dessert-fortified-wine.png"
    Write-Host "  ✓ Dessert & Fortified Wine page.png → dessert-fortified-wine.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 2b: Beer Collection
Write-Host ""
Write-Host "[PHASE 2b] Beer Collection Images" -ForegroundColor Green
if (Test-Path "craft beer page.png") {
    Rename-Item -Path "craft beer page.png" -NewName "craft-beer.png"
    Write-Host "  ✓ craft beer page.png → craft-beer.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Imported Beer page.png") {
    Rename-Item -Path "Imported Beer page.png" -NewName "imported-beer.png"
    Write-Host "  ✓ Imported Beer page.png → imported-beer.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Local TN Beer page.png") {
    Rename-Item -Path "Local TN Beer page.png" -NewName "local-tn-beer.png"
    Write-Host "  ✓ Local TN Beer page.png → local-tn-beer.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Hard Seltzers & Coolers beer page.png") {
    Rename-Item -Path "Hard Seltzers & Coolers beer page.png" -NewName "hard-seltzers-coolers.png"
    Write-Host "  ✓ Hard Seltzers & Coolers beer page.png → hard-seltzers-coolers.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Cider Collection beer page.png") {
    Rename-Item -Path "Cider Collection beer page.png" -NewName "cider-collection.png"
    Write-Host "  ✓ Cider Collection beer page.png → cider-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Beer Variety Packs beer page.png") {
    Rename-Item -Path "Beer Variety Packs beer page.png" -NewName "beer-variety-packs.png"
    Write-Host "  ✓ Beer Variety Packs beer page.png → beer-variety-packs.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 2c: Food Pairings
Write-Host ""
Write-Host "[PHASE 2c] Food Pairing Images" -ForegroundColor Green
if (Test-Path "Wings & IPA.png") {
    Rename-Item -Path "Wings & IPA.png" -NewName "wings-ipa.png"
    Write-Host "  ✓ Wings & IPA.png → wings-ipa.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Burgers & Amber Ale.png") {
    Rename-Item -Path "Burgers & Amber Ale.png" -NewName "burgers-amber-ale.png"
    Write-Host "  ✓ Burgers & Amber Ale.png → burgers-amber-ale.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Seafood & Wheat Beer.png") {
    Rename-Item -Path "Seafood & Wheat Beer.png" -NewName "seafood-wheat-beer.png"
    Write-Host "  ✓ Seafood & Wheat Beer.png → seafood-wheat-beer.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Pizza & Lager.png") {
    Rename-Item -Path "Pizza & Lager.png" -NewName "pizza-lager.png"
    Write-Host "  ✓ Pizza & Lager.png → pizza-lager.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "BBQ & Porter.png") {
    Rename-Item -Path "BBQ & Porter.png" -NewName "bbq-porter.png"
    Write-Host "  ✓ BBQ & Porter.png → bbq-porter.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Desserts & Stout.png") {
    Rename-Item -Path "Desserts & Stout.png" -NewName "desserts-stout.png"
    Write-Host "  ✓ Desserts & Stout.png → desserts-stout.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 2d: Spirit Collection
Write-Host ""
Write-Host "[PHASE 2d] Spirit Collection Images" -ForegroundColor Green
if (Test-Path "whiskey Spirit page.png") {
    Rename-Item -Path "whiskey Spirit page.png" -NewName "whiskey.png"
    Write-Host "  ✓ whiskey Spirit page.png → whiskey.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Vodka Spirit page.png") {
    Rename-Item -Path "Vodka Spirit page.png" -NewName "vodka-spirits.png"
    Write-Host "  ✓ Vodka Spirit page.png → vodka-spirits.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Rum Spirit Collection.jpg") {
    Rename-Item -Path "Rum Spirit Collection.jpg" -NewName "rum-spirits.jpg"
    Write-Host "  ✓ Rum Spirit Collection.jpg → rum-spirits.jpg" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Gin spirit page.jpg") {
    Rename-Item -Path "Gin spirit page.jpg" -NewName "gin-spirits.jpg"
    Write-Host "  ✓ Gin spirit page.jpg → gin-spirits.jpg" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Tequilla Spirit page.png") {
    Rename-Item -Path "Tequilla Spirit page.png" -NewName "tequila-spirits.png"
    Write-Host "  ✓ Tequilla Spirit page.png → tequila-spirits.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Cognac & Brandy Spirit page.png") {
    Rename-Item -Path "Cognac & Brandy Spirit page.png" -NewName "cognac-brandy.png"
    Write-Host "  ✓ Cognac & Brandy Spirit page.png → cognac-brandy.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Specialty Spirit page.png") {
    Rename-Item -Path "Specialty Spirit page.png" -NewName "specialty-spirits.png"
    Write-Host "  ✓ Specialty Spirit page.png → specialty-spirits.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Tennessee Whiskey Spirit page.png") {
    Rename-Item -Path "Tennessee Whiskey Spirit page.png" -NewName "tennessee-whiskey.png"
    Write-Host "  ✓ Tennessee Whiskey Spirit page.png → tennessee-whiskey.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 2e: Cocktail Images
Write-Host ""
Write-Host "[PHASE 2e] Cocktail Images" -ForegroundColor Green
if (Test-Path "Old Fashioned spirit page.jpg") {
    Rename-Item -Path "Old Fashioned spirit page.jpg" -NewName "old-fashioned-cocktail.jpg"
    Write-Host "  ✓ Old Fashioned spirit page.jpg → old-fashioned-cocktail.jpg" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Martini Spirit page.png") {
    Rename-Item -Path "Martini Spirit page.png" -NewName "martini-cocktail.png"
    Write-Host "  ✓ Martini Spirit page.png → martini-cocktail.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Margarita.png") {
    Rename-Item -Path "Margarita.png" -NewName "margarita-cocktail.png"
    Write-Host "  ✓ Margarita.png → margarita-cocktail.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Manhattan spirit page.png") {
    Rename-Item -Path "Manhattan spirit page.png" -NewName "manhattan-cocktail.png"
    Write-Host "  ✓ Manhattan spirit page.png → manhattan-cocktail.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Negroni Spirit page.png") {
    Rename-Item -Path "Negroni Spirit page.png" -NewName "negroni-cocktail.png"
    Write-Host "  ✓ Negroni Spirit page.png → negroni-cocktail.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Moscow Mule spirit page.png") {
    Rename-Item -Path "Moscow Mule spirit page.png" -NewName "moscow-mule-cocktail.png"
    Write-Host "  ✓ Moscow Mule spirit page.png → moscow-mule-cocktail.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 3: Homepage Images
Write-Host ""
Write-Host "[PHASE 3] Homepage Images" -ForegroundColor Green
if (Test-Path "red wine bottle.png") {
    Rename-Item -Path "red wine bottle.png" -NewName "red-wine-bottle.png"
    Write-Host "  ✓ red wine bottle.png → red-wine-bottle.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "White wine.png") {
    Rename-Item -Path "White wine.png" -NewName "white-wine-bottle.png"
    Write-Host "  ✓ White wine.png → white-wine-bottle.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Whiskey Bottles.png") {
    Rename-Item -Path "Whiskey Bottles.png" -NewName "whiskey-bottles.png"
    Write-Host "  ✓ Whiskey Bottles.png → whiskey-bottles.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Beer.png") {
    Rename-Item -Path "Beer.png" -NewName "beer-selection.png"
    Write-Host "  ✓ Beer.png → beer-selection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "vodka.png") {
    Rename-Item -Path "vodka.png" -NewName "vodka-bottle.png"
    Write-Host "  ✓ vodka.png → vodka-bottle.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "sparkling wine.png") {
    Rename-Item -Path "sparkling wine.png" -NewName "sparkling-wine-bottle.png"
    Write-Host "  ✓ sparkling wine.png → sparkling-wine-bottle.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Phase 4: Collection Hero Images
Write-Host ""
Write-Host "[PHASE 4] Collection Hero Images" -ForegroundColor Green
if (Test-Path "Red wine collection page.png") {
    Rename-Item -Path "Red wine collection page.png" -NewName "red-wine-collection.png"
    Write-Host "  ✓ Red wine collection page.png → red-wine-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "White wine collection page.png") {
    Rename-Item -Path "White wine collection page.png" -NewName "white-wine-collection.png"
    Write-Host "  ✓ White wine collection page.png → white-wine-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Sparkling & Champagne collection page.png") {
    Rename-Item -Path "Sparkling & Champagne collection page.png" -NewName "sparkling-collection.png"
    Write-Host "  ✓ Sparkling & Champagne collection page.png → sparkling-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Whiskey collection page.png") {
    Rename-Item -Path "Whiskey collection page.png" -NewName "whiskey-collection.png"
    Write-Host "  ✓ Whiskey collection page.png → whiskey-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Vodka collection page.png") {
    Rename-Item -Path "Vodka collection page.png" -NewName "vodka-collection.png"
    Write-Host "  ✓ Vodka collection page.png → vodka-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Rum Collection page.png") {
    Rename-Item -Path "Rum Collection page.png" -NewName "rum-collection.png"
    Write-Host "  ✓ Rum Collection page.png → rum-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

if (Test-Path "Craft Beer Collection Page.png") {
    Rename-Item -Path "Craft Beer Collection Page.png" -NewName "craft-beer-collection.png"
    Write-Host "  ✓ Craft Beer Collection Page.png → craft-beer-collection.png" -ForegroundColor White
    $renamed++
} else { $skipped++ }

# Summary
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  RENAMING COMPLETE!" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "✓ Files Renamed: $renamed" -ForegroundColor Green
Write-Host "○ Files Skipped: $skipped (already renamed or not found)" -ForegroundColor Yellow
Write-Host "✗ Errors: $errors" -ForegroundColor Red
Write-Host ""
Write-Host "All image files have been renamed to web-friendly format!" -ForegroundColor Green
Write-Host "Next step: Commit and push changes to GitHub" -ForegroundColor Yellow
Write-Host ""
