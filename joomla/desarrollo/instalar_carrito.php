<?php
/**
 * Instalador y Generador del Carrito de Compras
 * Para Chocolate Artesanal de Ambato (Joomla 5/6 + Helix Ultimate)
 * 
 * Acciones:
 * 1. Actualiza custom.css con los estilos completos del Carrito y Drawer lateral.
 * 2. Crea/Actualiza el módulo de Carrito (mod_custom) en posición debug con Drawer, LocalStorage y Checkout WhatsApp.
 * 3. Actualiza SP Page Builder (página id=1) con selectores de cantidad y botones "Agregar al Carrito".
 */

define('_JEXEC', 1);
require_once dirname(__DIR__) . '/configuration.php';
$config = new JConfig();

$host = $config->host;
$port = 3306;
if (strpos($host, ':') !== false) {
    list($host, $port) = explode(':', $host);
}

try {
    $pdo = new PDO("mysql:host={$host};port={$port};dbname={$config->db};charset=utf8mb4", $config->user, $config->password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]);
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage() . "\n");
}

$prefix = $config->dbprefix;
$now = date('Y-m-d H:i:s');

echo "=== 1. CREAR / ACTUALIZAR MÓDULO DEL CARRITO DE COMPRAS ===\n";

$cartModuleHtml = <<<'HTML'
<!-- COMPONENTE FLOTANTE Y DRAWER DEL CARRITO DE COMPRAS -->
<div id="cart-app-wrapper">
  <!-- Overlay / Fondo Oscuro -->
  <div id="cart-drawer-backdrop" onclick="window.AmbatoCart.close()"></div>

  <!-- Panel Lateral / Drawer Deslizante -->
  <div id="cart-drawer-panel" role="dialog" aria-modal="true" aria-labelledby="cart-title">
    <div class="cart-drawer-header">
      <div>
        <h3 id="cart-title">🛒 Tu Carrito de Compras</h3>
        <small style="color: #6C4A33; font-weight: 500;">Chocolate Artesanal de Ambato</small>
      </div>
      <button type="button" class="cart-drawer-close" onclick="window.AmbatoCart.close()" aria-label="Cerrar Carrito">&times;</button>
    </div>

    <!-- Lista de Artículos -->
    <div class="cart-drawer-items" id="cart-items-container">
      <!-- Se inyecta dinámicamente -->
    </div>

    <!-- Pie del Carrito con Totales y Checkout -->
    <div class="cart-drawer-footer" id="cart-footer-container">
      <div class="cart-summary-line">
        <span>Subtotal:</span>
        <strong id="cart-subtotal">$0.00</strong>
      </div>
      <div class="cart-summary-line" style="font-size: 0.88rem; color: #2E7D32;">
        <span>🚚 Envío:</span>
        <span>A coordinar / Ambato & Nacional</span>
      </div>
      <div class="cart-total-line">
        <span>TOTAL:</span>
        <span class="cart-total-amount" id="cart-total">$0.00</span>
      </div>

      <!-- Formulario de Pedido Rápido -->
      <div class="cart-checkout-form">
        <div style="font-weight: 700; font-size: 0.9rem; color: #4A2E26; margin-bottom: 8px;">
          Datos para Entrega y Facturación:
        </div>
        <input type="text" id="cart-customer-name" class="cart-input" placeholder="Tu Nombre y Apellido *" required>
        <input type="tel" id="cart-customer-phone" class="cart-input" placeholder="Teléfono / WhatsApp *" required>
        <input type="text" id="cart-customer-address" class="cart-input" placeholder="Ciudad y Dirección de Entrega *" required>
        <input type="text" id="cart-customer-notes" class="cart-input" placeholder="Notas (Ej: Para regalo, piso, referencia)" style="margin-bottom: 0;">
      </div>

      <!-- Botón de Envío por WhatsApp -->
      <button type="button" class="btn-dorado-agregar" onclick="window.AmbatoCart.checkoutWhatsApp()" style="font-size: 1.05rem; padding: 14px; display: flex; align-items: center; justify-content: center; gap: 10px; background-color: #25D366 !important; border-color: #25D366 !important; margin-bottom: 10px;">
        <svg width="22" height="22" viewBox="0 0 32 32" fill="currentColor">
          <path d="M16.002 0C7.165 0 0 7.165 0 16.002c0 2.825.738 5.578 2.138 7.998L.069 31.854l8.037-2.108a15.93 15.93 0 007.896 2.083h.007c8.834 0 15.998-7.165 15.998-16.002C32.007 7.165 24.843 0 16.002 0zm0 29.136h-.006a13.2 13.2 0 01-6.726-1.844l-.482-.286-4.992 1.309 1.332-4.866-.314-.5a13.167 13.167 0 01-2.02-7.047c0-7.29 5.932-13.222 13.227-13.222 3.532 0 6.852 1.376 9.35 3.874a13.155 13.155 0 013.868 9.35c0 7.292-5.932 13.232-13.227 13.232zm7.254-9.9c-.397-.2-2.35-1.16-2.715-1.293-.365-.133-.63-.2-.896.2-.266.398-1.03 1.293-1.262 1.558-.232.266-.465.3-.863.1-.397-.2-1.678-.618-3.197-1.972-1.182-1.054-1.98-2.356-2.212-2.754-.233-.398-.025-.613.174-.811.179-.179.398-.465.597-.697.199-.233.266-.398.398-.664.133-.266.066-.498-.033-.697-.1-.199-.896-2.158-1.229-2.955-.323-.777-.652-.671-.896-.684l-.763-.013c-.266 0-.697.1-1.062.498-.365.398-1.394 1.361-1.394 3.32 0 1.959 1.427 3.852 1.626 4.118.2.266 2.809 4.288 6.804 6.013.951.411 1.693.656 2.271.84.954.303 1.823.26 2.51.157.766-.115 2.35-0.96 2.682-1.887.332-.927.332-1.721.232-1.887-.1-.166-.365-.266-.763-.465z"/>
        </svg>
        <span>Finalizar Pedido por WhatsApp</span>
      </button>

      <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 8px;">
        <button type="button" onclick="window.AmbatoCart.clear()" style="background:transparent; border:none; color:#8C2E2E; font-size:0.85rem; cursor:pointer; text-decoration:underline; padding:0;">
          Vaciar carrito
        </button>
        <button type="button" onclick="window.AmbatoCart.close()" style="background:transparent; border:none; color:#4A2E26; font-size:0.85rem; cursor:pointer; text-decoration:underline; padding:0;">
          Continuar explorando
        </button>
      </div>
    </div>
  </div>

  <!-- Toast Notification -->
  <div id="cart-toast" role="status" aria-live="polite">
    <span style="font-size: 1.3rem;">✓</span>
    <span id="cart-toast-msg">Producto agregado al carrito</span>
  </div>
</div>

<script>
(function() {
  const STORAGE_KEY = 'chocolate_ambato_cart';
  const WA_NUMBER = '593994851768';

  const AmbatoCart = {
    items: [],

    init: function() {
      try {
        const stored = localStorage.getItem(STORAGE_KEY);
        this.items = stored ? JSON.parse(stored) : [];
      } catch (e) {
        this.items = [];
      }
      this.updateUI();
      this.injectHeaderCartButton();
    },

    save: function() {
      try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(this.items));
      } catch (e) {}
      this.updateUI();
    },

    addItem: function(product, qty) {
      qty = parseInt(qty) || 1;
      const existing = this.items.find(i => i.id == product.id);
      if (existing) {
        existing.qty += qty;
      } else {
        this.items.push({
          id: product.id,
          name: product.name,
          price: parseFloat(product.price),
          img: product.img || 'images/productos/imagen_producto_default.avif',
          presentation: product.presentation || '',
          qty: qty
        });
      }
      this.save();
      this.showToast(`✓ Agregado: ${qty}x ${product.name}`);
    },

    updateQty: function(id, delta) {
      const item = this.items.find(i => i.id == id);
      if (!item) return;
      item.qty += delta;
      if (item.qty <= 0) {
        this.items = this.items.filter(i => i.id != id);
      }
      this.save();
    },

    removeItem: function(id) {
      this.items = this.items.filter(i => i.id != id);
      this.save();
    },

    clear: function() {
      if (this.items.length === 0) return;
      if (confirm('¿Deseas vaciar todos los productos del carrito?')) {
        this.items = [];
        this.save();
      }
    },

    open: function() {
      const panel = document.getElementById('cart-drawer-panel');
      const backdrop = document.getElementById('cart-drawer-backdrop');
      if (panel) panel.classList.add('active');
      if (backdrop) backdrop.classList.add('active');
      document.body.style.overflow = 'hidden';
    },

    close: function() {
      const panel = document.getElementById('cart-drawer-panel');
      const backdrop = document.getElementById('cart-drawer-backdrop');
      if (panel) panel.classList.remove('active');
      if (backdrop) backdrop.classList.remove('active');
      document.body.style.overflow = '';
    },

    showToast: function(msg) {
      const toast = document.getElementById('cart-toast');
      const toastMsg = document.getElementById('cart-toast-msg');
      if (toast && toastMsg) {
        toastMsg.innerText = msg;
        toast.classList.add('show');
        clearTimeout(this._toastTimer);
        this._toastTimer = setTimeout(() => {
          toast.classList.remove('show');
        }, 3200);
      }
    },

    updateUI: function() {
      const totalCount = this.items.reduce((sum, item) => sum + item.qty, 0);
      const subtotal = this.items.reduce((sum, item) => sum + (item.price * item.qty), 0);

      // Actualizar contadores flotantes y cabecera
      const floatingCount = document.getElementById('floating-cart-count');
      const floatingText = document.getElementById('floating-cart-text');
      if (floatingCount) floatingCount.innerText = totalCount;
      if (floatingText) {
        floatingText.innerText = totalCount > 0 ? `$${subtotal.toFixed(2)}` : 'Carrito';
      }

      const headerBadges = document.querySelectorAll('.header-cart-badge');
      headerBadges.forEach(b => b.innerText = totalCount);

      // Renderizar elementos del Drawer
      const container = document.getElementById('cart-items-container');
      const footer = document.getElementById('cart-footer-container');

      if (!container) return;

      if (this.items.length === 0) {
        container.innerHTML = `
          <div style="text-align: center; padding: 50px 15px; color: #6C4A33;">
            <div style="font-size: 3.5rem; margin-bottom: 15px;">🍫</div>
            <h4 style="font-family:'DM Serif Display',serif; color:#4A2E26; margin-bottom:10px;">Tu carrito está vacío</h4>
            <p style="font-size: 0.95rem; line-height: 1.6; max-width: 280px; margin: 0 auto 25px auto;">
              Explora nuestra noble selección de chocolates artesanales y agrega tus favoritos.
            </p>
            <button type="button" class="btn-dorado-outline" onclick="window.AmbatoCart.close(); window.location.hash='productos';" style="padding: 10px 24px; font-size: 0.95rem;">
              Ver Especialidades
            </button>
          </div>
        `;
        if (footer) footer.style.display = 'none';
        return;
      }

      if (footer) footer.style.display = 'block';

      let html = '';
      this.items.forEach(item => {
        const itemTotal = (item.price * item.qty).toFixed(2);
        html += `
          <div class="cart-item-row">
            <img src="${item.img}" alt="${item.name}" class="cart-item-img">
            <div class="cart-item-info">
              <div class="cart-item-title">${item.name}</div>
              <div class="cart-item-meta">${item.presentation} • $${item.price.toFixed(2)} c/u</div>
              <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 4px;">
                <div class="cart-qty-ctrl">
                  <button type="button" class="cart-qty-btn" onclick="window.AmbatoCart.updateQty('${item.id}', -1)">-</button>
                  <span class="cart-qty-val">${item.qty}</span>
                  <button type="button" class="cart-qty-btn" onclick="window.AmbatoCart.updateQty('${item.id}', 1)">+</button>
                </div>
                <div class="cart-item-price">$${itemTotal}</div>
              </div>
            </div>
            <button type="button" class="cart-item-remove" onclick="window.AmbatoCart.removeItem('${item.id}')" title="Eliminar producto" aria-label="Eliminar producto">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <polyline points="3 6 5 6 21 6"></polyline>
                <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
              </svg>
            </button>
          </div>
        `;
      });

      container.innerHTML = html;

      const subtotalEl = document.getElementById('cart-subtotal');
      const totalEl = document.getElementById('cart-total');
      if (subtotalEl) subtotalEl.innerText = `$${subtotal.toFixed(2)}`;
      if (totalEl) totalEl.innerText = `$${subtotal.toFixed(2)}`;
    },

    checkoutWhatsApp: function() {
      if (this.items.length === 0) {
        alert('Tu carrito está vacío.');
        return;
      }

      const name = (document.getElementById('cart-customer-name')?.value || '').trim();
      const phone = (document.getElementById('cart-customer-phone')?.value || '').trim();
      const address = (document.getElementById('cart-customer-address')?.value || '').trim();
      const notes = (document.getElementById('cart-customer-notes')?.value || '').trim();

      if (!name) {
        alert('Por favor, ingresa tu Nombre y Apellido para el pedido.');
        document.getElementById('cart-customer-name')?.focus();
        return;
      }
      if (!phone) {
        alert('Por favor, ingresa tu número de Teléfono / WhatsApp.');
        document.getElementById('cart-customer-phone')?.focus();
        return;
      }
      if (!address) {
        alert('Por favor, ingresa tu Ciudad y Dirección de Entrega.');
        document.getElementById('cart-customer-address')?.focus();
        return;
      }

      const subtotal = this.items.reduce((sum, item) => sum + (item.price * item.qty), 0);

      // Armar mensaje estructurado de WhatsApp
      let msg = `🍫 *NUEVO PEDIDO - CHOCOLATE AMBATEÑO*\n`;
      msg += `-----------------------------------------\n`;
      msg += `👤 *Cliente:* ${name}\n`;
      msg += `📱 *Teléfono:* ${phone}\n`;
      msg += `📍 *Ciudad / Dirección:* ${address}\n`;
      if (notes) {
        msg += `📝 *Notas:* ${notes}\n`;
      }
      msg += `-----------------------------------------\n`;
      msg += `📦 *DETALLE DE PRODUCTOS:*\n`;

      this.items.forEach(item => {
        const itemTotal = (item.price * item.qty).toFixed(2);
        msg += `• ${item.qty}x ${item.name} (${item.presentation}) - $${itemTotal}\n`;
      });

      msg += `-----------------------------------------\n`;
      msg += `💰 *TOTAL A PAGAR:* $${subtotal.toFixed(2)} USD\n`;
      msg += `-----------------------------------------\n`;
      msg += `_Pedido realizado desde la web oficial de Chocolate Artesanal de Ambato._`;

      const url = `https://wa.me/${WA_NUMBER}?text=${encodeURIComponent(msg)}`;
      window.open(url, '_blank');
    },

    injectHeaderCartButton: function() {
      // Inyectar en el Header de Helix Ultimate si aún no existe
      if (document.getElementById('header-cart-btn')) return;

      const menuWrapper = document.querySelector('#sp-menu .sp-column') || document.querySelector('#sp-menu');
      if (menuWrapper) {
        const btn = document.createElement('button');
        btn.id = 'header-cart-btn';
        btn.type = 'button';
        btn.className = 'btn-header-cart';
        btn.onclick = () => this.open();
        btn.innerHTML = `
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <circle cx="9" cy="21" r="1"></circle>
            <circle cx="20" cy="21" r="1"></circle>
            <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
          </svg>
          <span class="d-none d-sm-inline">Carrito</span>
          <span class="cart-count-badge header-cart-badge">0</span>
        `;
        // Insertar antes del offcanvas toggler o al final
        const toggler = document.getElementById('offcanvas-toggler');
        if (toggler) {
          menuWrapper.insertBefore(btn, toggler);
        } else {
          menuWrapper.appendChild(btn);
        }
      }
    }
  };

  // Exponer globalmente
  window.AmbatoCart = AmbatoCart;

  // Funciones globales para las tarjetas de producto
  window.cambiarQtyCard = function(btn, delta) {
    const parent = btn.closest('.control-cantidad-card');
    if (!parent) return;
    const input = parent.querySelector('.input-qty-card');
    if (!input) return;
    let val = parseInt(input.value) || 1;
    val += delta;
    if (val < 1) val = 1;
    if (val > 99) val = 99;
    input.value = val;
  };

  window.agregarAlCarritoDesdeCard = function(btn) {
    const card = btn.closest('.tarjeta-producto-box') || btn.closest('.producto-tarjeta-joomla');
    const input = card ? card.querySelector('.input-qty-card') : null;
    const qty = input ? parseInt(input.value) || 1 : 1;

    const product = {
      id: btn.getAttribute('data-id'),
      name: btn.getAttribute('data-name'),
      price: btn.getAttribute('data-price'),
      img: btn.getAttribute('data-img'),
      presentation: btn.getAttribute('data-presentation')
    };

    window.AmbatoCart.addItem(product, qty);
    if (input) input.value = 1; // resetear a 1
  };

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => AmbatoCart.init());
  } else {
    AmbatoCart.init();
  }
})();
</script>
HTML;

// Verificar si existe el módulo
$modStmt = $pdo->prepare("SELECT id FROM `{$prefix}modules` WHERE `id` = 112 OR `title` = 'Carrito de Compras y Pedidos' LIMIT 1");
$modStmt->execute();
$mod = $modStmt->fetch();

if ($mod) {
    $modId = (int)$mod['id'];
    $uMod = $pdo->prepare("UPDATE `{$prefix}modules` SET 
        `title` = 'Carrito de Compras y Pedidos',
        `content` = :content,
        `position` = 'debug',
        `published` = 1,
        `showtitle` = 0,
        `params` = '{\"prepare_content\":1}',
        `language` = '*'
        WHERE `id` = :id");
    $uMod->execute([':content' => $cartModuleHtml, ':id' => $modId]);
    echo "Módulo de Carrito existente actualizado (ID: {$modId}).\n";
} else {
    $insMod = $pdo->prepare("INSERT INTO `{$prefix}modules` 
        (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`)
        VALUES
        (112, 'Carrito de Compras y Pedidos', '', :content, 2, 'debug', NULL, NULL, 1, 'mod_custom', 1, 0, '{\"prepare_content\":1}', 0, '*')");
    $insMod->execute([':content' => $cartModuleHtml]);
    $modId = 112;
    echo "Nuevo módulo de Carrito creado (ID: {$modId}).\n";
}

// Vincular a todas las páginas en modules_menu
$pdo->query("INSERT IGNORE INTO `{$prefix}modules_menu` (`moduleid`, `menuid`) VALUES ({$modId}, 0)");
echo "Módulo vinculado a todas las páginas de Joomla.\n";

echo "\n=== ACTUALIZACIÓN DE MÓDULO COMPLETADA ===\n";

