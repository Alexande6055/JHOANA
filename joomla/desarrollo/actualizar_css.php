<?php
$css = <<<'CSS'
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;0,700;1,400&family=Playfair+Display:ital,wght@0,600;0,700;1,600&display=swap');

/* ==========================================================================
   SISTEMA DE DISEÑO: CHOCOLATE ARTESANAL DE AMBATO
   Helix Ultimate Framework + SP Page Builder
   ========================================================================== */

:root {
  --color-cafe-oscuro: #3B2314;
  --color-cafe-medio: #5A3825;
  --color-crema: #F5EBDD;
  --color-crema-claro: #FAF5EE;
  --color-dorado: #C19A3D;
  --color-dorado-hover: #A6832F;
  --color-texto-cuerpo: #4A3528;
  --color-whatsapp: #25D366;
  --color-blanco: #FFFFFF;
  --fuente-titulos: 'Playfair Display', Georgia, 'Times New Roman', serif;
  --fuente-cuerpo: 'Montserrat', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
  --sombra-tarjeta: 0 10px 25px rgba(59, 35, 20, 0.08);
  --sombra-hover: 0 16px 35px rgba(59, 35, 20, 0.16);
  --radio-borde: 10px;
}

body {
  font-family: var(--fuente-cuerpo);
  color: var(--color-texto-cuerpo);
  background-color: var(--color-crema);
  line-height: 1.65;
  -webkit-font-smoothing: antialiased;
}

h1, h2, h3, h4 {
  font-family: var(--fuente-titulos) !important;
  color: var(--color-cafe-oscuro) !important;
}

html {
  scroll-behavior: smooth;
  scroll-padding-top: 85px;
}

/* Header sticky de Helix Ultimate */
#sp-header {
  background-color: rgba(245, 235, 221, 0.98) !important;
  backdrop-filter: blur(10px);
  border-bottom: 2px solid rgba(193, 154, 61, 0.35) !important;
  box-shadow: 0 4px 18px rgba(59, 35, 20, 0.08);
}

.sp-megamenu-parent > li > a {
  font-family: var(--fuente-cuerpo) !important;
  font-weight: 600 !important;
  font-size: 16px !important;
  color: var(--color-cafe-oscuro) !important;
  padding: 12px 20px !important;
  transition: all 0.3s ease;
}

.sp-megamenu-parent > li.active > a,
.sp-megamenu-parent > li:hover > a {
  color: var(--color-dorado) !important;
}

/* Botones con estilo propio */
.btn-cafe {
  background-color: var(--color-cafe-oscuro) !important;
  color: var(--color-crema) !important;
  border: 2px solid var(--color-cafe-oscuro) !important;
  border-radius: var(--radio-borde) !important;
  font-weight: 600 !important;
  padding: 14px 32px !important;
  transition: all 0.3s ease !important;
  text-decoration: none !important;
  display: inline-block;
  cursor: pointer;
  font-size: 16px;
}

.btn-cafe:hover {
  background-color: #24140B !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 6px 18px rgba(59, 35, 20, 0.3);
}

.btn-dorado-outline {
  background-color: transparent !important;
  color: var(--color-cafe-oscuro) !important;
  border: 2px solid var(--color-dorado) !important;
  border-radius: var(--radio-borde) !important;
  font-weight: 600 !important;
  padding: 14px 32px !important;
  transition: all 0.3s ease !important;
  text-decoration: none !important;
  display: inline-block;
  cursor: pointer;
  font-size: 16px;
}

.btn-dorado-outline:hover {
  background-color: var(--color-dorado) !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 6px 18px rgba(193, 154, 61, 0.35);
}

.btn-dorado-agregar {
  background-color: var(--color-dorado) !important;
  color: #FFFFFF !important;
  border: 2px solid var(--color-dorado) !important;
  border-radius: 8px !important;
  font-weight: 700 !important;
  font-size: 15px !important;
  padding: 12px 20px !important;
  width: 100% !important;
  text-align: center;
  transition: all 0.3s ease !important;
  cursor: pointer;
  display: block;
  text-decoration: none !important;
  box-sizing: border-box;
}

.btn-dorado-agregar:hover {
  background-color: var(--color-dorado-hover) !important;
  border-color: var(--color-dorado-hover) !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 6px 16px rgba(193, 154, 61, 0.4);
}

/* Tarjetas de Producto */
.tarjeta-producto-box {
  background: var(--color-blanco);
  border-radius: 14px;
  overflow: hidden;
  box-shadow: var(--sombra-tarjeta);
  transition: transform 0.35s ease, box-shadow 0.35s ease;
  padding: 24px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  height: 100%;
  border: 1px solid rgba(193, 154, 61, 0.2);
  margin-bottom: 25px;
}

.tarjeta-producto-box:hover {
  transform: translateY(-8px);
  box-shadow: var(--sombra-hover);
  border-color: var(--color-dorado);
}

.tarjeta-producto-box .img-caja {
  text-align: center;
  margin-bottom: 18px;
  border-radius: 10px;
  background-color: #FAF6F0;
  padding: 20px;
}

.tarjeta-producto-box .img-caja img {
  max-width: 100%;
  height: 200px;
  object-fit: contain;
  transition: transform 0.4s ease;
}

.tarjeta-producto-box:hover .img-caja img {
  transform: scale(1.07);
}

.tarjeta-producto-box h3 {
  font-size: 1.35rem;
  margin: 10px 0;
  color: var(--color-cafe-oscuro);
}

.tarjeta-producto-box .precio-tag {
  font-size: 1.6rem;
  font-weight: 700;
  color: var(--color-dorado);
  margin-bottom: 16px;
}

.badge-origen {
  background: rgba(193, 154, 61, 0.12);
  display: inline-block;
  padding: 3px 10px;
  border-radius: 4px;
  align-self: flex-start;
}

/* Cajas de Beneficios */
.caja-beneficio {
  background: #FFFFFF;
  border-radius: 12px;
  padding: 35px 25px;
  text-align: center;
  border-bottom: 4px solid var(--color-dorado);
  box-shadow: var(--sombra-tarjeta);
  transition: transform 0.3s ease;
  height: 100%;
  margin-bottom: 20px;
}

.caja-beneficio:hover {
  transform: translateY(-6px);
  box-shadow: var(--sombra-hover);
}

.icono-beneficio-svg {
  width: 60px;
  height: 60px;
  margin: 0 auto 20px auto;
  color: var(--color-dorado);
}

/* Ocultar elementos nativos innecesarios en la landing */
#sp-title, .breadcrumb, .page-header, .sp-module-title, .sp-module-heading, .sppb-section-title {
  display: none !important;
}

@media (max-width: 768px) {
  .btn-cafe, .btn-dorado-outline {
    width: 100%;
    text-align: center;
    margin-bottom: 12px;
  }
}
/* ==========================================================================
   CARRITO DE COMPRAS Y DRAWER
   ========================================================================== */

/* Botón de Carrito en Header */
.btn-header-cart {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  background-color: var(--color-dorado);
  color: #FFFFFF !important;
  padding: 8px 18px;
  border-radius: 50px;
  font-family: var(--fuente-cuerpo);
  font-weight: 600;
  font-size: 14px;
  text-decoration: none !important;
  transition: all 0.3s ease;
  cursor: pointer;
  border: none;
  margin-left: 15px;
}

.btn-header-cart:hover {
  background-color: var(--color-dorado-hover);
  transform: translateY(-2px);
  box-shadow: 0 4px 14px rgba(193, 154, 61, 0.4);
}

.cart-count-badge {
  background-color: var(--color-cafe-oscuro);
  color: #FFFFFF;
  font-size: 11px;
  font-weight: 700;
  padding: 2px 7px;
  border-radius: 12px;
  min-width: 18px;
  text-align: center;
}

/* Floating Cart Pill (móviles y scroll) */
#floating-cart-pill {
  position: fixed;
  bottom: 85px;
  right: 24px;
  z-index: 99998;
  display: flex;
  align-items: center;
  gap: 10px;
  background-color: var(--color-cafe-oscuro);
  color: #FFFFFF !important;
  padding: 11px 20px;
  border-radius: 50px;
  box-shadow: 0 8px 24px rgba(59, 35, 20, 0.35);
  cursor: pointer;
  font-weight: 600;
  font-size: 14px;
  border: 2px solid var(--color-dorado);
  transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

#floating-cart-pill:hover {
  transform: translateY(-3px) scale(1.03);
  box-shadow: 0 12px 28px rgba(59, 35, 20, 0.45);
}

/* Backdrop Overlay */
#cart-drawer-backdrop {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(30, 18, 10, 0.65);
  backdrop-filter: blur(4px);
  z-index: 999998;
  opacity: 0;
  visibility: hidden;
  transition: opacity 0.35s ease, visibility 0.35s ease;
}

#cart-drawer-backdrop.active {
  opacity: 1;
  visibility: visible;
}

/* Drawer lateral */
#cart-drawer-panel {
  position: fixed;
  top: 0;
  right: -480px;
  width: 440px;
  max-width: 92vw;
  height: 100%;
  background: #FFFFFF;
  z-index: 999999;
  box-shadow: -5px 0 35px rgba(59, 35, 20, 0.3);
  display: flex;
  flex-direction: column;
  transition: right 0.38s cubic-bezier(0.25, 1, 0.5, 1);
  font-family: var(--fuente-cuerpo);
}

#cart-drawer-panel.active {
  right: 0;
}

/* Drawer Header */
.cart-drawer-header {
  padding: 22px 24px;
  background: #F5EBDD;
  border-bottom: 2px solid rgba(193, 154, 61, 0.3);
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.cart-drawer-header h3 {
  margin: 0;
  font-family: var(--fuente-titulos) !important;
  font-size: 1.35rem;
  color: var(--color-cafe-oscuro);
}

.cart-drawer-close {
  background: transparent;
  border: none;
  font-size: 30px;
  color: var(--color-cafe-oscuro);
  cursor: pointer;
  line-height: 1;
  padding: 2px 8px;
  border-radius: 6px;
  transition: all 0.2s;
}

.cart-drawer-close:hover {
  background: rgba(59, 35, 20, 0.1);
  color: #000;
}

/* Drawer Items List */
.cart-drawer-items {
  flex: 1;
  overflow-y: auto;
  padding: 20px 24px;
}

.cart-item-row {
  display: flex;
  gap: 14px;
  padding: 14px 0;
  border-bottom: 1px solid #EFE5D8;
  align-items: center;
}

.cart-item-img {
  width: 62px;
  height: 62px;
  object-fit: contain;
  background: #FAF6F0;
  border-radius: 8px;
  padding: 4px;
  border: 1px solid rgba(193, 154, 61, 0.2);
}

.cart-item-info {
  flex: 1;
}

.cart-item-title {
  font-weight: 700;
  font-size: 0.95rem;
  color: var(--color-cafe-oscuro);
  margin-bottom: 3px;
}

.cart-item-meta {
  font-size: 0.82rem;
  color: var(--color-cafe-medio);
  margin-bottom: 6px;
}

.cart-item-price {
  font-weight: 700;
  color: var(--color-dorado);
  font-size: 1rem;
}

.cart-qty-ctrl {
  display: inline-flex;
  align-items: center;
  border: 1px solid #D6C2AA;
  border-radius: 6px;
  overflow: hidden;
  background: #FFF;
}

.cart-qty-btn {
  background: #FAF6F0;
  border: none;
  width: 26px;
  height: 26px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-weight: bold;
  color: var(--color-cafe-oscuro);
  cursor: pointer;
  transition: background 0.2s;
}

.cart-qty-btn:hover {
  background: #EFE5D8;
}

.cart-qty-val {
  width: 30px;
  text-align: center;
  font-size: 0.9rem;
  font-weight: 600;
  color: var(--color-cafe-oscuro);
}

.cart-item-remove {
  background: transparent;
  border: none;
  color: #B23B3B;
  cursor: pointer;
  padding: 6px;
  border-radius: 4px;
  transition: background 0.2s;
}

.cart-item-remove:hover {
  background: #FFEEEE;
}

/* Drawer Footer */
.cart-drawer-footer {
  padding: 18px 24px 24px 24px;
  background: #FAF6F0;
  border-top: 2px solid rgba(193, 154, 61, 0.25);
  box-shadow: 0 -4px 15px rgba(59, 35, 20, 0.05);
  max-height: 50vh;
  overflow-y: auto;
}

.cart-summary-line {
  display: flex;
  justify-content: space-between;
  margin-bottom: 6px;
  font-size: 0.95rem;
  color: var(--color-texto-cuerpo);
}

.cart-total-line {
  display: flex;
  justify-content: space-between;
  margin-top: 8px;
  padding-top: 8px;
  border-top: 1px dashed rgba(193, 154, 61, 0.4);
  font-size: 1.3rem;
  font-weight: 700;
  color: var(--color-cafe-oscuro);
}

.cart-total-amount {
  color: var(--color-dorado);
}

/* Formulario de Checkout en Carrito */
.cart-checkout-form {
  margin: 14px 0 12px 0;
  background: #FFFFFF;
  padding: 12px 14px;
  border-radius: 8px;
  border: 1px solid #E5D5C0;
}

.cart-input {
  width: 100%;
  padding: 7px 10px;
  margin-bottom: 8px;
  border: 1px solid #D6C2AA;
  border-radius: 6px;
  font-size: 0.86rem;
  font-family: var(--fuente-cuerpo);
  box-sizing: border-box;
}

.cart-input:focus {
  outline: none;
  border-color: var(--color-dorado);
  box-shadow: 0 0 0 3px rgba(193, 154, 61, 0.15);
}

/* Toast Notifications */
#cart-toast {
  position: fixed;
  top: 25px;
  right: 25px;
  background: #3B2314;
  color: #F5EBDD;
  padding: 14px 22px;
  border-radius: 8px;
  box-shadow: 0 10px 30px rgba(0,0,0,0.3);
  border-left: 5px solid var(--color-dorado);
  z-index: 1000000;
  font-family: var(--fuente-cuerpo);
  font-size: 14px;
  font-weight: 600;
  display: flex;
  align-items: center;
  gap: 12px;
  transform: translateY(-80px);
  opacity: 0;
  transition: all 0.35s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

#cart-toast.show {
  transform: translateY(0);
  opacity: 1;
}

/* Control de Cantidad en Tarjetas */
.control-cantidad-card {
  display: inline-flex;
  align-items: center;
  border: 2px solid var(--color-dorado);
  border-radius: 8px;
  overflow: hidden;
  background: #FFFFFF;
  height: 42px;
}

.control-cantidad-card .btn-qty {
  background: transparent;
  border: none;
  width: 32px;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.1rem;
  font-weight: bold;
  color: var(--color-cafe-oscuro);
  cursor: pointer;
  transition: background 0.2s;
}

.control-cantidad-card .btn-qty:hover {
  background: #FAF5EE;
}

.control-cantidad-card .input-qty-card {
  width: 36px;
  height: 100%;
  text-align: center;
  border: none;
  font-weight: 700;
  color: var(--color-cafe-oscuro);
  font-size: 1rem;
  background: transparent;
  padding: 0;
  outline: none;
}

@media (max-width: 576px) {
  #floating-cart-pill {
    bottom: 78px;
    right: 18px;
    padding: 9px 16px;
    font-size: 13px;
  }
}
CSS;

$file = dirname(__DIR__) . '/templates/shaper_helixultimate/css/custom.css';
if (file_put_contents($file, $css) !== false) {
    echo "OK: custom.css actualizado exitosamente (" . strlen($css) . " bytes)\n";
} else {
    echo "ERROR al escribir en $file\n";
}

