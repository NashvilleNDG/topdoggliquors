# Image Rename Plan - Systematic Approach

## Summary
- **Total Images Found:** 57 files
- **Images Referenced in Code:** 107 references across 9 HTML files
- **Files with Spaces/Issues:** 45+ files need renaming

---

## Renaming Rules:
1. **Lowercase only** (for consistency)
2. **Replace spaces with hyphens** (web-friendly)
3. **Remove special characters** (&, commas, etc.)
4. **Keep extensions** (.png, .jpg, .svg)
5. **Simplify long names** (remove redundant words)

---

## Phase 1: Hero Images (CRITICAL - High Priority)

### Current → New Name
```
Hero-image.png → hero-image.png (already good, just lowercase H)
beer-hero-image.png → beer-hero-image.png (✓ already good)
wine-hero-image.png → wine-hero-image.png (✓ already good)
spirit-hero-image.png → spirit-hero-image.png (✓ already good)
collection-hero-image.png → collection-hero-image.png (✓ already good)
contact-hero-image.png → contact-hero-image.png (✓ already good)
Our-services-hero.png → services-hero.png
Our-story-hero.png → about-hero.png
```

**References:** 8 files (about.html, services.html, delivery.html, etc.)

---

## Phase 2: Collection Page Images (HIGH Priority)

### Wine Collection
```
red wine, wine page.png → red-wine.png
white wine, wine page.png → white-wine.png
Rosé wine page.png → rose-wine.png
Sparkling & Champagne2 wine page.png → sparkling-champagne.png
Organic wine page.png → organic-wine.png
Dessert & Fortified Wine page.png → dessert-fortified-wine.png
```

### Beer Collection
```
craft beer page.png → craft-beer.png
Imported Beer page.png → imported-beer.png
Local TN Beer page.png → local-tn-beer.png
Hard Seltzers & Coolers beer page.png → hard-seltzers-coolers.png
Cider Collection beer page.png → cider-collection.png
Beer Variety Packs beer page.png → beer-variety-packs.png
```

### Spirit Collection
```
whiskey Spirit page.png → whiskey.png
Vodka Spirit page.png → vodka-spirits.png
Rum Spirit Collection.jpg → rum-spirits.jpg
Gin spirit page.jpg → gin-spirits.jpg
Tequilla Spirit page.png → tequila-spirits.png
Cognac & Brandy Spirit page.png → cognac-brandy.png
Specialty Spirit page.png → specialty-spirits.png
Tennessee Whiskey Spirit page.png → tennessee-whiskey.png
```

### Cocktail Images
```
Old Fashioned spirit page.jpg → old-fashioned-cocktail.jpg
Martini Spirit page.png → martini-cocktail.png
Margarita.png → margarita-cocktail.png
Manhattan spirit page.png → manhattan-cocktail.png
Negroni Spirit page.png → negroni-cocktail.png
Moscow Mule spirit page.png → moscow-mule-cocktail.png
```

### Food Pairing Images
```
Wings & IPA.png → wings-ipa.png
Burgers & Amber Ale.png → burgers-amber-ale.png
Seafood & Wheat Beer.png → seafood-wheat-beer.png
Pizza & Lager.png → pizza-lager.png
BBQ & Porter.png → bbq-porter.png
Desserts & Stout.png → desserts-stout.png
```

---

## Phase 3: Homepage Images (MEDIUM Priority)

```
red wine bottle.png → red-wine-bottle.png
White wine.png → white-wine-bottle.png
Whiskey Bottles.png → whiskey-bottles.png
Beer.png → beer-selection.png
vodka.png → vodka-bottle.png
sparkling wine.png → sparkling-wine-bottle.png
```

---

## Phase 4: Collection Hero Images (MEDIUM Priority)

```
Red wine collection page.png → red-wine-collection.png
White wine collection page.png → white-wine-collection.png
Sparkling & Champagne collection page.png → sparkling-collection.png
Whiskey collection page.png → whiskey-collection.png
Vodka collection page.png → vodka-collection.png
Rum Collection page.png → rum-collection.png
Craft Beer Collection Page.png → craft-beer-collection.png
```

---

## Files That Don't Need Renaming (Already Good)

```
✓ logo.png
✓ Doordash-logo.svg
✓ Uber-eats-logo.svg
✓ beer-hero-image.png
✓ wine-hero-image.png
✓ spirit-hero-image.png
✓ collection-hero-image.png
✓ contact-hero-image.png
```

---

## Execution Plan

### Step 1: Backup
- Create backup of images folder
- Commit current state to git

### Step 2: Rename Files (PowerShell)
- Use PowerShell Rename-Item commands
- Keep track of all changes

### Step 3: Update HTML References
- Search and replace in all HTML files
- Update each reference systematically

### Step 4: Update CSS References
- Check CSS files for background-image URLs
- Update if needed

### Step 5: Verify & Test
- Check for broken image links
- Test each page locally
- Verify all images load

### Step 6: Commit & Push
- Git add all changes
- Commit with detailed message
- Push to GitHub

---

## Risk Mitigation
- ✅ Create backup first
- ✅ Do one phase at a time
- ✅ Test after each phase
- ✅ Can rollback via git if needed
- ✅ All references tracked in this document

---

## Estimated Impact
- **Execution Time:** 30-45 minutes
- **Files Modified:** 9 HTML files + 45 image files
- **References Updated:** 107 image references
- **SEO Impact:** Positive (cleaner URLs)
- **Page Speed:** Neutral (same file sizes)
- **Breaking Risk:** Low (if done systematically)

---

## Ready to Execute?
Once approved, I'll execute this plan phase by phase with testing between each phase.
