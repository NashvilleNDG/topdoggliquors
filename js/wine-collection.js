// ============================================
// WINE COLLECTION PAGE JAVASCRIPT
// ============================================

document.addEventListener('DOMContentLoaded', function() {
  
  // ============================================
  // SMOOTH SCROLL FOR ANCHOR LINKS
  // ============================================
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
      const href = this.getAttribute('href');
      if (href === '#') return;
      
      e.preventDefault();
      const target = document.querySelector(href);
      if (target) {
        const offsetTop = target.offsetTop - 80; // Account for fixed navbar
        window.scrollTo({
          top: offsetTop,
          behavior: 'smooth'
        });
      }
    });
  });
  
  // ============================================
  // ACCORDION FUNCTIONALITY - EDUCATION SECTION
  // ============================================
  const accordionHeaders = document.querySelectorAll('.accordion-header');
  
  accordionHeaders.forEach(header => {
    header.addEventListener('click', function() {
      const content = this.nextElementSibling;
      const isActive = this.classList.contains('active');
      
      // Close all accordion items
      accordionHeaders.forEach(h => {
        h.classList.remove('active');
        h.nextElementSibling.classList.remove('active');
      });
      
      // Open clicked item if it wasn't active
      if (!isActive) {
        this.classList.add('active');
        content.classList.add('active');
      }
    });
  });
  
  // ============================================
  // FAQ ACCORDION
  // ============================================
  const faqQuestions = document.querySelectorAll('.faq-question');
  
  faqQuestions.forEach(question => {
    question.addEventListener('click', function() {
      const answer = this.nextElementSibling;
      const isActive = this.classList.contains('active');
      
      // Close all FAQ items
      faqQuestions.forEach(q => {
        q.classList.remove('active');
        q.nextElementSibling.classList.remove('active');
      });
      
      // Open clicked item if it wasn't active
      if (!isActive) {
        this.classList.add('active');
        answer.classList.add('active');
      }
    });
  });
  
  // ============================================
  // SCROLL ANIMATIONS
  // ============================================
  const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  };
  
  const observer = new IntersectionObserver(function(entries) {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.style.opacity = '1';
        entry.target.style.transform = 'translateY(0)';
      }
    });
  }, observerOptions);
  
  // Observe elements for scroll animation
  const animatedElements = document.querySelectorAll(
    '.category-card, .wine-card, .region-card, .benefit-card, .accordion-item, .faq-item'
  );
  
  animatedElements.forEach(el => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(30px)';
    el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
    observer.observe(el);
  });
  
  // ============================================
  // STICKY NAVIGATION
  // ============================================
  const nav = document.querySelector('.navbar');
  let lastScroll = 0;
  
  window.addEventListener('scroll', () => {
    const currentScroll = window.pageYOffset;
    
    if (currentScroll > 100) {
      nav.classList.add('scrolled');
    } else {
      nav.classList.remove('scrolled');
    }
    
    lastScroll = currentScroll;
  });
  
  // ============================================
  // MOBILE MENU TOGGLE - REMOVED
  // ============================================
  // Mobile menu toggle is handled by main.js to avoid conflicts
  // This ensures consistent behavior across all pages
  
  // ============================================
  // BACK TO TOP BUTTON
  // ============================================
  const backToTop = document.querySelector('.back-to-top');
  
  if (backToTop) {
    window.addEventListener('scroll', () => {
      if (window.pageYOffset > 300) {
        backToTop.classList.add('visible');
      } else {
        backToTop.classList.remove('visible');
      }
    });
    
    backToTop.addEventListener('click', () => {
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });
    });
  }
  
  // ============================================
  // PARALLAX EFFECT FOR HERO
  // ============================================
  const heroBackground = document.querySelector('.hero-background');
  
  if (heroBackground) {
    window.addEventListener('scroll', () => {
      const scrolled = window.pageYOffset;
      const hero = document.querySelector('.wine-hero');
      if (hero) {
        const heroHeight = hero.offsetHeight;
        if (scrolled < heroHeight) {
          const parallaxSpeed = 0.5;
          heroBackground.style.transform = `translateY(${scrolled * parallaxSpeed}px)`;
        }
      }
    });
  }
  
  // ============================================
  // INITIALIZE ANIMATIONS ON LOAD
  // ============================================
  window.addEventListener('load', () => {
    // Trigger initial fade-in for elements in viewport
    animatedElements.forEach((el, index) => {
      setTimeout(() => {
        const rect = el.getBoundingClientRect();
        if (rect.top < window.innerHeight) {
          el.style.opacity = '1';
          el.style.transform = 'translateY(0)';
        }
      }, index * 100);
    });
  });
  
});

