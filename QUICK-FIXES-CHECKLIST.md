# Quick Fixes Checklist ⚡
## Top Dogg Liquors - Priority Actions (This Week)

**Created:** January 7, 2026

---

## 🔴 CRITICAL (Do Today - 2 hours total)

### ✅ 1. Add Google Analytics 4 (30 min)

**Why:** You can't improve what you don't measure. No analytics = flying blind.

**Steps:**
1. Go to https://analytics.google.com
2. Click "Start measuring"
3. Create account: "Top Dogg Liquors"
4. Add property: "topdoggliquors.com"
5. Copy your Measurement ID (looks like: G-XXXXXXXXXX)
6. Add this code to **EVERY HTML page** right before `</head>`:

```html
<!-- Google Analytics 4 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX'); // Replace with your ID
</script>
```

**Files to update:** All 9 HTML files
- index.html
- about.html
- contact.html
- services.html
- delivery.html
- liquor-collections.html
- spirit-shop-clarksville.html
- wine-shop-clarksville.html
- beer-shop-clarksville.html

---

### ✅ 2. Create Favicon (15 min)

**Why:** Browser tabs show generic icon = unprofessional

**Steps:**
1. Go to https://realfavicongenerator.net/
2. Upload `images/logo.png`
3. Download the favicon package
4. Extract files to your website root folder
5. Add this to **ALL HTML files** in `<head>`:

```html
<link rel="icon" type="image/x-icon" href="/favicon.ico">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="manifest" href="/site.webmanifest">
```

---

### ✅ 3. Remove Debug Code (20 min)

**Why:** Console.log slows down site, looks unprofessional

**Files to clean:**

**js/main.js** - Remove lines 41-47 (console.log statements in menu toggle)

**js/main.js** - Replace lines 396, 416, 419, 424:
```javascript
// INSTEAD OF: alert('Thank you for subscribing!');
// USE: 
console.log('Form submitted successfully');
// Or implement a proper toast notification
```

**js/wine-collection.js** - Remove line 226  
**js/spirits-collection.js** - Remove line 226  
**js/beer-collection.js** - Remove line 227

---

### ✅ 4. Set Up Google Search Console (30 min)

**Why:** Monitor search performance, find issues, see keywords

**Steps:**
1. Go to https://search.google.com/search-console
2. Click "Add property"
3. Enter: https://topdoggliquors.com
4. Choose verification method: HTML file upload (easiest)
5. Download verification file
6. Upload to website root
7. Click "Verify"
8. Submit sitemap: https://topdoggliquors.com/sitemap.xml

---

## 🟠 HIGH PRIORITY (Do This Week - 3-5 hours)

### ✅ 5. Replace Stock Photos (2 hours)

**Current issue:** Using Unsplash placeholder images

**Replace these 3 images on index.html:**

Line 222:
```html
<!-- BEFORE -->
<img src="https://images.unsplash.com/photo-1510812431401-41d2bd2722f3?w=800&q=80" ...>

<!-- AFTER -->
<img src="images/Red wine collection page.png" ...>
```

Line 230:
```html
<!-- BEFORE -->
<img src="https://images.unsplash.com/photo-1551538827-9c037cb4f32a?w=800&q=80" ...>

<!-- AFTER -->
<img src="images/Whiskey collection page.png" ...>
```

Line 238:
```html
<!-- BEFORE -->
<img src="https://images.unsplash.com/photo-1608270586620-248524c67de9?w=800&q=80" ...>

<!-- AFTER -->
<img src="images/Craft Beer Collection Page.png" ...>
```

**Also update:** beer-shop-clarksville.html (line 301) - same Unsplash spirits image

---

### ✅ 6. Add Robots Meta Tag (10 min)

**Add to ALL 9 HTML files** after viewport meta:

```html
<meta name="robots" content="index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1">
```

---

### ✅ 7. Fix Instagram Section (1 hour)

**Option A:** Remove placeholder section (5 min)
- Delete lines 598-600 in index.html

**Option B:** Add real Instagram posts (1 hour)
- Go to your Instagram
- Screenshot 6 recent posts
- Add to images folder
- Update HTML with grid of 6 images
- Link each to Instagram profile

---

### ✅ 8. Add Skip Navigation Link (30 min)

**Add to ALL HTML pages** right after `<body>`:

```html
<a href="#main-content" class="skip-link">Skip to main content</a>
```

**Add to css/style.css:**
```css
.skip-link {
  position: absolute;
  top: -40px;
  left: 0;
  background: var(--primary-gold);
  color: var(--primary-navy);
  padding: 8px 16px;
  text-decoration: none;
  z-index: 10000;
  font-weight: 600;
}

.skip-link:focus {
  top: 0;
}
```

**Then add `id="main-content"` to main section** on each page.

---

## 📊 TESTING AFTER FIXES

### Verify Everything Works:

1. **Google Analytics:**
   - Visit your website
   - Check GA4 real-time reports
   - You should see yourself as 1 active user

2. **Favicon:**
   - Open site in new tab
   - See your logo in browser tab?
   - Check on mobile too

3. **Images:**
   - All 3 homepage collection cards show real images?
   - Images load quickly?

4. **Search Console:**
   - After 24-48 hours, check for indexing
   - Submit sitemap if not auto-detected

5. **Skip Link:**
   - Press Tab key when page loads
   - Skip link appears at top?
   - Clicking it jumps to content?

---

## 📝 SUMMARY

### Time Investment:
- **Today:** 2 hours (Critical items)
- **This Week:** 3-5 hours (High priority)
- **Total:** 5-7 hours

### Impact:
- ✅ Website analytics (can track visitors)
- ✅ Professional appearance (favicon)
- ✅ Cleaner code (no debug statements)
- ✅ SEO monitoring (Search Console)
- ✅ Authentic images (no stock photos)
- ✅ Better accessibility (skip link)

### Expected Results:
- **Week 1:** Data starts flowing (analytics)
- **Week 2:** Search Console shows indexing
- **Month 1:** +20-30% in organic traffic
- **Month 3:** +50% in overall traffic

---

## ❓ NEED HELP?

### Stuck on something?

**Google Analytics:**
- Official guide: https://support.google.com/analytics/answer/9304153
- Video tutorial: YouTube "How to set up GA4"

**Favicon:**
- Use: https://realfavicongenerator.net/
- No design skills needed

**HTML Editing:**
- Use any text editor (Notepad++, VS Code, Sublime)
- Make backup before editing

**Testing:**
- Test on localhost first
- Then upload to live site
- Check on multiple browsers

---

## ✅ COMPLETION CHECKLIST

**Critical (Today):**
- [ ] Google Analytics installed (all 9 pages)
- [ ] Favicon created and added (all 9 pages)
- [ ] Console.log removed (4 JS files)
- [ ] Google Search Console set up

**High Priority (This Week):**
- [ ] Stock photos replaced (index.html + beer page)
- [ ] Robots meta tag added (all 9 pages)
- [ ] Instagram section fixed/removed
- [ ] Skip link added (all 9 pages)

**Verified:**
- [ ] Analytics tracking works
- [ ] Favicon shows in browser tab
- [ ] No JavaScript errors in console
- [ ] Images all load correctly
- [ ] Skip link works on Tab press

---

**Print this checklist and check off items as you complete them!**

**Questions?** Refer to WEBSITE-AUDIT-2026.md for detailed explanations.

---

**Last Updated:** January 7, 2026
