/**
 * Mejoras de interactividad y sincronización de carrito - Chocolate Ambateño.
 * Cargado automáticamente por templates/shaper_helixultimate/index.php.
 */
(function () {
  'use strict';

  const STORAGE_KEY = 'chocolate_ambato_cart';

  function readStoredCart() {
    try {
      const raw = window.localStorage.getItem(STORAGE_KEY);
      const parsed = raw ? JSON.parse(raw) : [];
      return Array.isArray(parsed) ? parsed : [];
    } catch (e) {
      return [];
    }
  }

  function syncHeaderCartBadge() {
    if (window.AmbatoCart) {
      if (!document.getElementById('header-cart-btn') && typeof window.AmbatoCart.injectHeaderCartButton === 'function') {
        window.AmbatoCart.injectHeaderCartButton();
      }
      if (typeof window.AmbatoCart.updateUI === 'function') {
        window.AmbatoCart.updateUI();
      }
    }

    const items = window.AmbatoCart && Array.isArray(window.AmbatoCart.items)
      ? window.AmbatoCart.items
      : readStoredCart();
    const totalCount = items.reduce(function (sum, item) {
      return sum + (parseInt(item.qty, 10) || 0);
    }, 0);

    document.querySelectorAll('.header-cart-badge').forEach(function (badge) {
      badge.textContent = String(totalCount);
    });
  }

  function clampQty(value) {
    const num = parseInt(value, 10);
    if (Number.isNaN(num) || num < 1) return 1;
    if (num > 99) return 99;
    return num;
  }

  function updateWhatsAppHref(purchaseBox, qty) {
    const waLink = purchaseBox.querySelector('.ambato-detail-wa-btn');
    if (!waLink) return;

    const phone = waLink.getAttribute('data-wa-phone') || '593994851768';
    const name = waLink.getAttribute('data-product-name') || '';
    const price = waLink.getAttribute('data-product-price') || '';
    const qtyPrefix = qty > 1 ? qty + 'x ' : '';
    const msg = 'Hola, deseo pedir ' + qtyPrefix + name + (price ? ' (' + price + ')' : '');
    waLink.setAttribute('href', 'https://wa.me/' + phone + '?text=' + encodeURIComponent(msg));
  }

  function addProductToCart(product, qty) {
    if (window.AmbatoCart && typeof window.AmbatoCart.addItem === 'function') {
      window.AmbatoCart.addItem(product, qty);
      syncHeaderCartBadge();
      return;
    }

    // Respaldo si AmbatoCart aún no se inicializó
    const items = readStoredCart();
    const existing = items.find(function (item) {
      return String(item.id) === String(product.id);
    });
    if (existing) {
      existing.qty = (parseInt(existing.qty, 10) || 0) + qty;
    } else {
      items.push({
        id: product.id,
        name: product.name,
        price: parseFloat(product.price) || 0,
        img: product.img || 'images/productos/imagen_producto_default.avif',
        presentation: product.presentation || '',
        qty: qty
      });
    }
    try {
      window.localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
    } catch (e) {}
    syncHeaderCartBadge();
  }

  // Compatibilidad con botones heredados que invocaban window.agregarAlCarritoDirecto
  if (typeof window.agregarAlCarritoDirecto !== 'function') {
    window.agregarAlCarritoDirecto = function (id, name, price, img, presentation) {
      const container = document.querySelector('.ambato-detail-purchase') || document;
      const input = container.querySelector('.input-qty-card');
      const qty = clampQty(input ? input.value : 1);
      addProductToCart(
        {
          id: id,
          name: name,
          price: price,
          img: img || 'images/productos/imagen_producto_default.avif',
          presentation: presentation || ''
        },
        qty
      );
    };
  }

  function initDetailControls() {
    document.querySelectorAll('.ambato-detail-purchase').forEach(function (purchaseBox) {
      if (purchaseBox.dataset.ambatoBound === '1') return;
      purchaseBox.dataset.ambatoBound = '1';

      const qtyInput = purchaseBox.querySelector('.input-qty-card');
      const addBtn = purchaseBox.querySelector('.ambato-detail-add-btn');

      purchaseBox.querySelectorAll('.btn-qty[data-qty-delta]').forEach(function (btn) {
        btn.addEventListener('click', function () {
          if (!qtyInput) return;
          const delta = parseInt(btn.getAttribute('data-qty-delta'), 10) || 0;
          const next = clampQty((parseInt(qtyInput.value, 10) || 1) + delta);
          qtyInput.value = String(next);
          updateWhatsAppHref(purchaseBox, next);
        });
      });

      if (qtyInput) {
        qtyInput.addEventListener('change', function () {
          const next = clampQty(qtyInput.value);
          qtyInput.value = String(next);
          updateWhatsAppHref(purchaseBox, next);
        });
      }

      if (addBtn) {
        const labelSpan = addBtn.querySelector('span');
        const defaultLabel = labelSpan ? labelSpan.textContent : 'Agregar al carrito';
        let feedbackTimer = null;

        addBtn.addEventListener('click', function () {
          const qty = clampQty(qtyInput ? qtyInput.value : 1);
          addProductToCart(
            {
              id: addBtn.getAttribute('data-id'),
              name: addBtn.getAttribute('data-name'),
              price: addBtn.getAttribute('data-price'),
              img: addBtn.getAttribute('data-img'),
              presentation: addBtn.getAttribute('data-presentation')
            },
            qty
          );

          if (qtyInput) {
            qtyInput.value = '1';
            updateWhatsAppHref(purchaseBox, 1);
          }

          if (labelSpan) {
            labelSpan.textContent = '✓ Agregado al carrito';
            addBtn.classList.add('is-added');
            window.clearTimeout(feedbackTimer);
            feedbackTimer = window.setTimeout(function () {
              labelSpan.textContent = defaultLabel;
              addBtn.classList.remove('is-added');
            }, 1800);
          }
        });
      }
    });

    document.querySelectorAll('.ambato-related-add').forEach(function (btn) {
      if (btn.dataset.ambatoBound === '1') return;
      btn.dataset.ambatoBound = '1';

      const labelSpan = btn.querySelector('span');
      const defaultLabel = labelSpan ? labelSpan.textContent : 'Agregar al carrito';
      let feedbackTimer = null;

      btn.addEventListener('click', function () {
        addProductToCart(
          {
            id: btn.getAttribute('data-id'),
            name: btn.getAttribute('data-name'),
            price: btn.getAttribute('data-price'),
            img: btn.getAttribute('data-img'),
            presentation: btn.getAttribute('data-presentation')
          },
          1
        );

        if (labelSpan) {
          labelSpan.textContent = '✓ Agregado';
          btn.classList.add('is-added');
          window.clearTimeout(feedbackTimer);
          feedbackTimer = window.setTimeout(function () {
            labelSpan.textContent = defaultLabel;
            btn.classList.remove('is-added');
          }, 1600);
        }
      });
    });
  }

  function fixMobileMenuIcons() {
    const toggler = document.getElementById('offcanvas-toggler');
    if (toggler && !toggler.querySelector('.ambato-burger-svg')) {
      toggler.innerHTML =
        '<svg class="ambato-burger-svg" viewBox="0 0 24 24" width="24" height="24" fill="none" stroke="#F5EBDD" stroke-width="2.2" stroke-linecap="round" aria-hidden="true">' +
        '<line x1="3" y1="6" x2="21" y2="6"></line>' +
        '<line x1="3" y1="12" x2="21" y2="12"></line>' +
        '<line x1="3" y1="18" x2="21" y2="18"></line>' +
        '</svg>';
    }

    document.querySelectorAll('.close-offcanvas').forEach(function (closeBtn) {
      if (!closeBtn.querySelector('.ambato-close-svg')) {
        closeBtn.innerHTML =
          '<svg class="ambato-close-svg" viewBox="0 0 24 24" width="22" height="22" fill="none" stroke="#4A2E26" stroke-width="2.2" stroke-linecap="round" aria-hidden="true">' +
          '<line x1="18" y1="6" x2="6" y2="18"></line>' +
          '<line x1="6" y1="6" x2="18" y2="18"></line>' +
          '</svg>';
      }
    });
  }

  function initOnePageNavActive() {
    if (window.__ambatoNavActiveInit) return;

    var desktopLinks = Array.prototype.slice.call(
      document.querySelectorAll('#sp-menu .sp-megamenu-parent > li > a')
    );
    var mobileLinks = Array.prototype.slice.call(
      document.querySelectorAll('.offcanvas-menu ul.menu > li > a')
    );
    var allLinks = desktopLinks.concat(mobileLinks);
    if (!allLinks.length) return;

    var sectionIds = ['productos', 'historia', 'contacto'];
    var hasHomeSections =
      document.body.classList.contains('itemid-101') ||
      Boolean(document.getElementById('productos') && document.getElementById('historia'));

    if (!hasHomeSections) return;

    window.__ambatoNavActiveInit = true;

    function getNavKeyFromHref(href) {
      if (!href) return null;
      var parsed;
      try {
        parsed = new URL(href, window.location.href);
      } catch (e) {
        return null;
      }
      if (parsed.origin !== window.location.origin) return null;

      var p = parsed.pathname.replace(/\/+$/, '');
      var isHomePath = p === '' || p === '/index.php' || p === '/joomla' || p === '/joomla/index.php';
      if (!isHomePath) return null;

      var h = parsed.hash.replace(/^#/, '').toLowerCase();
      if (h === '' || h === 'inicio') return 'inicio';
      if (sectionIds.indexOf(h) !== -1) return h;
      return null;
    }

    function setActiveKey(activeKey) {
      desktopLinks.forEach(function (a) {
        var li = a.parentElement;
        if (!li) return;
        var key = getNavKeyFromHref(a.getAttribute('href'));
        if (!key) return;
        if (key === activeKey) {
          li.classList.add('active', 'current-item');
          a.setAttribute('aria-current', 'page');
        } else {
          li.classList.remove('active', 'current-item');
          a.removeAttribute('aria-current');
        }
      });

      mobileLinks.forEach(function (a) {
        var li = a.parentElement;
        if (!li) return;
        var key = getNavKeyFromHref(a.getAttribute('href'));
        if (!key) return;
        if (key === activeKey) {
          li.classList.add('active', 'current');
          a.setAttribute('aria-current', 'page');
        } else {
          li.classList.remove('active', 'current');
          a.removeAttribute('aria-current');
        }
      });
    }

    function closeOffcanvasMenu() {
      var init = document.querySelector('.offcanvas-init');
      if (init && init.classList.contains('offcanvas-active')) {
        init.classList.remove('offcanvas-active', 'full-offcanvas');
        document.body.style.overflow = '';
        var menu = document.querySelector('.offcanvas-menu');
        if (menu) {
          menu.setAttribute('inert', '');
          menu.setAttribute('tabindex', '-1');
        }
      }
    }

    function detectSectionFromScroll() {
      var header = document.getElementById('sp-header');
      var offset = (header ? header.offsetHeight : 88) + 48;
      var docEl = document.documentElement;
      var atBottom = window.innerHeight + window.pageYOffset >= docEl.scrollHeight - 24;

      if (atBottom && document.getElementById('contacto')) {
        return 'contacto';
      }
      if (window.pageYOffset < 80) {
        return 'inicio';
      }

      var current = 'inicio';
      sectionIds.forEach(function (id) {
        var el = document.getElementById(id);
        if (!el) return;
        if (el.getBoundingClientRect().top <= offset) {
          current = id;
        }
      });
      return current;
    }

    var lockUntil = 0;
    var scrollRaf = null;

    function syncOnScroll() {
      if (Date.now() < lockUntil) return;
      setActiveKey(detectSectionFromScroll());
    }

    window.addEventListener(
      'scroll',
      function () {
        if (scrollRaf) return;
        scrollRaf = window.requestAnimationFrame(function () {
          scrollRaf = null;
          syncOnScroll();
        });
      },
      { passive: true }
    );

    window.addEventListener('hashchange', function () {
      var h = window.location.hash.replace(/^#/, '').toLowerCase();
      if (sectionIds.indexOf(h) !== -1) {
        lockUntil = Date.now() + 800;
        setActiveKey(h);
      } else if (h === '' || h === 'inicio') {
        lockUntil = Date.now() + 800;
        setActiveKey('inicio');
      }
    });

    allLinks.forEach(function (a) {
      a.addEventListener('click', function (e) {
        var key = getNavKeyFromHref(a.getAttribute('href'));
        if (!key) return;

        closeOffcanvasMenu();
        lockUntil = Date.now() + 850;
        setActiveKey(key);

        if (key === 'inicio') {
          e.preventDefault();
          window.scrollTo({ top: 0, behavior: 'smooth' });
          if (window.history && window.history.pushState && window.location.hash) {
            window.history.pushState(null, '', window.location.pathname + window.location.search);
          }
          return;
        }

        var target = document.getElementById(key);
        if (target) {
          e.preventDefault();
          var header = document.getElementById('sp-header');
          var headerHeight = header ? header.offsetHeight : 88;
          var y = target.getBoundingClientRect().top + window.pageYOffset - headerHeight - 16;
          window.scrollTo({ top: Math.max(0, y), behavior: 'smooth' });
          if (window.history && window.history.pushState) {
            window.history.pushState(null, '', '#' + key);
          }
        }
      });
    });

    var initialHash = window.location.hash.replace(/^#/, '').toLowerCase();
    if (sectionIds.indexOf(initialHash) !== -1) {
      lockUntil = Date.now() + 900;
      setActiveKey(initialHash);
    } else {
      syncOnScroll();
    }
  }

  function boot() {
    syncHeaderCartBadge();
    fixMobileMenuIcons();
    initDetailControls();
    initOnePageNavActive();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', boot);
  } else {
    boot();
  }

  window.addEventListener('load', syncHeaderCartBadge);
})();
