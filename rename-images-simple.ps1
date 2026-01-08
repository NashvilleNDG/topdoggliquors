# Simple Image Rename Script
Set-Location "c:\Users\colle\Downloads\Top Dogg Liquors\Top Dogg Liquors\images"

# Phase 1: Hero Images
if (Test-Path "Hero-image.png") { Rename-Item "Hero-image.png" "hero-image.png" }
if (Test-Path "Our-services-hero.png") { Rename-Item "Our-services-hero.png" "services-hero.png" }
if (Test-Path "Our-story-hero.png") { Rename-Item "Our-story-hero.png" "about-hero.png" }

# Phase 2a: Wine Collection
if (Test-Path "red wine, wine page.png") { Rename-Item "red wine, wine page.png" "red-wine.png" }
if (Test-Path "white wine, wine page.png") { Rename-Item "white wine, wine page.png" "white-wine.png" }
if (Test-Path "Rosé wine page.png") { Rename-Item "Rosé wine page.png" "rose-wine.png" }
if (Test-Path "Sparkling & Champagne2 wine page.png") { Rename-Item "Sparkling & Champagne2 wine page.png" "sparkling-champagne.png" }
if (Test-Path "Organic wine page.png") { Rename-Item "Organic wine page.png" "organic-wine.png" }
if (Test-Path "Dessert & Fortified Wine page.png") { Rename-Item "Dessert & Fortified Wine page.png" "dessert-fortified-wine.png" }

# Phase 2b: Beer Collection
if (Test-Path "craft beer page.png") { Rename-Item "craft beer page.png" "craft-beer.png" }
if (Test-Path "Imported Beer page.png") { Rename-Item "Imported Beer page.png" "imported-beer.png" }
if (Test-Path "Local TN Beer page.png") { Rename-Item "Local TN Beer page.png" "local-tn-beer.png" }
if (Test-Path "Hard Seltzers & Coolers beer page.png") { Rename-Item "Hard Seltzers & Coolers beer page.png" "hard-seltzers-coolers.png" }
if (Test-Path "Cider Collection beer page.png") { Rename-Item "Cider Collection beer page.png" "cider-collection.png" }
if (Test-Path "Beer Variety Packs beer page.png") { Rename-Item "Beer Variety Packs beer page.png" "beer-variety-packs.png" }

# Phase 2c: Food Pairings
if (Test-Path "Wings & IPA.png") { Rename-Item "Wings & IPA.png" "wings-ipa.png" }
if (Test-Path "Burgers & Amber Ale.png") { Rename-Item "Burgers & Amber Ale.png" "burgers-amber-ale.png" }
if (Test-Path "Seafood & Wheat Beer.png") { Rename-Item "Seafood & Wheat Beer.png" "seafood-wheat-beer.png" }
if (Test-Path "Pizza & Lager.png") { Rename-Item "Pizza & Lager.png" "pizza-lager.png" }
if (Test-Path "BBQ & Porter.png") { Rename-Item "BBQ & Porter.png" "bbq-porter.png" }
if (Test-Path "Desserts & Stout.png") { Rename-Item "Desserts & Stout.png" "desserts-stout.png" }

# Phase 2d: Spirits
if (Test-Path "whiskey Spirit page.png") { Rename-Item "whiskey Spirit page.png" "whiskey.png" }
if (Test-Path "Vodka Spirit page.png") { Rename-Item "Vodka Spirit page.png" "vodka-spirits.png" }
if (Test-Path "Rum Spirit Collection.jpg") { Rename-Item "Rum Spirit Collection.jpg" "rum-spirits.jpg" }
if (Test-Path "Gin spirit page.jpg") { Rename-Item "Gin spirit page.jpg" "gin-spirits.jpg" }
if (Test-Path "Tequilla Spirit page.png") { Rename-Item "Tequilla Spirit page.png" "tequila-spirits.png" }
if (Test-Path "Cognac & Brandy Spirit page.png") { Rename-Item "Cognac & Brandy Spirit page.png" "cognac-brandy.png" }
if (Test-Path "Specialty Spirit page.png") { Rename-Item "Specialty Spirit page.png" "specialty-spirits.png" }
if (Test-Path "Tennessee Whiskey Spirit page.png") { Rename-Item "Tennessee Whiskey Spirit page.png" "tennessee-whiskey.png" }

# Phase 2e: Cocktails
if (Test-Path "Old Fashioned spirit page.jpg") { Rename-Item "Old Fashioned spirit page.jpg" "old-fashioned-cocktail.jpg" }
if (Test-Path "Martini Spirit page.png") { Rename-Item "Martini Spirit page.png" "martini-cocktail.png" }
if (Test-Path "Margarita.png") { Rename-Item "Margarita.png" "margarita-cocktail.png" }
if (Test-Path "Manhattan spirit page.png") { Rename-Item "Manhattan spirit page.png" "manhattan-cocktail.png" }
if (Test-Path "Negroni Spirit page.png") { Rename-Item "Negroni Spirit page.png" "negroni-cocktail.png" }
if (Test-Path "Moscow Mule spirit page.png") { Rename-Item "Moscow Mule spirit page.png" "moscow-mule-cocktail.png" }

# Phase 3: Homepage
if (Test-Path "red wine bottle.png") { Rename-Item "red wine bottle.png" "red-wine-bottle.png" }
if (Test-Path "White wine.png") { Rename-Item "White wine.png" "white-wine-bottle.png" }
if (Test-Path "Whiskey Bottles.png") { Rename-Item "Whiskey Bottles.png" "whiskey-bottles.png" }
if (Test-Path "Beer.png") { Rename-Item "Beer.png" "beer-selection.png" }
if (Test-Path "vodka.png") { Rename-Item "vodka.png" "vodka-bottle.png" }
if (Test-Path "sparkling wine.png") { Rename-Item "sparkling wine.png" "sparkling-wine-bottle.png" }

# Phase 4: Collection Heroes
if (Test-Path "Red wine collection page.png") { Rename-Item "Red wine collection page.png" "red-wine-collection.png" }
if (Test-Path "White wine collection page.png") { Rename-Item "White wine collection page.png" "white-wine-collection.png" }
if (Test-Path "Sparkling & Champagne collection page.png") { Rename-Item "Sparkling & Champagne collection page.png" "sparkling-collection.png" }
if (Test-Path "Whiskey collection page.png") { Rename-Item "Whiskey collection page.png" "whiskey-collection.png" }
if (Test-Path "Vodka collection page.png") { Rename-Item "Vodka collection page.png" "vodka-collection.png" }
if (Test-Path "Rum Collection page.png") { Rename-Item "Rum Collection page.png" "rum-collection.png" }
if (Test-Path "Craft Beer Collection Page.png") { Rename-Item "Craft Beer Collection Page.png" "craft-beer-collection.png" }

Write-Host "Image renaming complete!" -ForegroundColor Green
