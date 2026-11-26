<?php
/**
 * Mejora Integral de la Landing Page Principal - Chocolate Artesanal de Ambato
 * Resuelve las 7 observaciones visuales y de UX identificadas por la inspección:
 * 1. Ocultar toggler hamburguesa duplicado en desktop (>=992px)
 * 2. Mejorar espaciado y contraste de botones en la sección Hero
 * 3. Alinear tarjetas de producto, alturas mínimas, insignias y sombras
 * 4. Alinear verticalmente la sección Historia y agregar flecha al CTA
 * 5. Mejorar iconos y tarjetas de la sección Valores / Beneficios con insignias circulares SVG
 * 6. Corregir logotipo del Footer (invisible sobre fondo oscuro) y micro-iconos corporativos
 * 7. Corregir posición del botón flotante de WhatsApp a la esquina inferior derecha y unificar teléfono (+593 99 485 1768)
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

echo "=== 1. ACTUALIZAR ESTILOS CSS EN CUSTOM.CSS ===\n";

$cssFile = dirname(__DIR__) . '/templates/shaper_helixultimate/css/custom.css';
$currentCss = file_exists($cssFile) ? file_get_contents($cssFile) : '';

$mejorasCss = <<<'CSS'

/* ==========================================================================
   MEJORAS VISUALES Y DE UX INTEGRALES - CHOCOLATE ARTESANAL DE AMBATO
   ========================================================================== */

/* 1. Ocultar el menú hamburguesa en pantallas grandes de escritorio (>=992px) */
@media (min-width: 992px) {
  #offcanvas-toggler,
  .offcanvas-toggler-secondary,
  .offcanvas-toggler-right {
    display: none !important;
  }
}

/* 2. Topbar centrado y armónico */
#sp-top-bar {
  background-color: #2B1D17 !important;
  padding: 8px 0 !important;
}

#sp-top-bar a {
  color: #F5EBDD !important;
  transition: color 0.2s ease;
}

#sp-top-bar a:hover {
  color: #C19A3D !important;
}

/* 3. Hero Section - Espaciado y contraste */
.seccion-hero {
  box-shadow: 0 12px 36px rgba(59, 35, 20, 0.08);
}

.hero-btn-historia {
  border: 2px solid #5C3A21 !important;
  color: #3B2314 !important;
  background-color: rgba(255, 255, 255, 0.6) !important;
  padding: 13px 32px !important;
  border-radius: 8px !important;
  font-weight: 700 !important;
  text-decoration: none !important;
  display: inline-flex !important;
  align-items: center !important;
  gap: 8px !important;
  font-size: 1.05rem !important;
  transition: all 0.3s ease !important;
}

.hero-btn-historia:hover {
  background-color: #5C3A21 !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 6px 18px rgba(92, 58, 33, 0.25);
}

.hero-btn-productos {
  background-color: #3B2314 !important;
  color: #F5EBDD !important;
  padding: 14px 34px !important;
  border-radius: 8px !important;
  font-weight: 700 !important;
  text-decoration: none !important;
  display: inline-flex !important;
  align-items: center !important;
  gap: 8px !important;
  font-size: 1.05rem !important;
  transition: all 0.3s ease !important;
}

.hero-btn-productos:hover {
  background-color: #24140B !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 8px 24px rgba(59, 35, 20, 0.3);
}

/* 4. Tarjetas de Productos y Carrusel */
.ambato-featured-products {
  padding: 20px 0 40px 0;
}

.ambato-product-track {
  padding: 15px 5px 25px 5px !important;
  scrollbar-width: thin;
  scrollbar-color: #C19A3D #F5EBDD;
}

.ambato-product-card {
  border-radius: 14px !important;
  border: 1px solid rgba(193, 154, 61, 0.25) !important;
  box-shadow: 0 8px 24px rgba(59, 35, 20, 0.07) !important;
  transition: transform 0.35s ease, box-shadow 0.35s ease !important;
  background: #FFFFFF !important;
}

.ambato-product-card:hover {
  transform: translateY(-8px) !important;
  box-shadow: 0 18px 38px rgba(59, 35, 20, 0.16) !important;
  border-color: #C19A3D !important;
}

.ambato-product-info h3 {
  min-height: 52px !important;
  display: flex !important;
  align-items: center !important;
  font-size: 1.25rem !important;
  margin-bottom: 10px !important;
}

.ambato-product-info h3 a {
  color: #3B2314 !important;
  text-decoration: none !important;
  transition: color 0.2s ease;
}

.ambato-product-info h3 a:hover {
  color: #C19A3D !important;
}

.ambato-product-card-footer {
  padding: 12px 0 !important;
  border-top: 1px solid rgba(193, 154, 61, 0.15);
  margin-top: 12px;
}

/* 5. Cajas de Beneficios / Valores */
.caja-beneficio-moderna {
  background: #FFFFFF;
  border-radius: 16px;
  padding: 38px 26px;
  text-align: center;
  border: 1px solid rgba(193, 154, 61, 0.22);
  box-shadow: 0 10px 28px rgba(59, 35, 20, 0.06);
  transition: all 0.35s ease;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.caja-beneficio-moderna:hover {
  transform: translateY(-8px);
  box-shadow: 0 18px 40px rgba(59, 35, 20, 0.14);
  border-color: #C19A3D;
}

.icono-insignia-dorada {
  width: 72px;
  height: 72px;
  border-radius: 50%;
  background: linear-gradient(135deg, rgba(193, 154, 61, 0.18), rgba(193, 154, 61, 0.08));
  border: 2px solid rgba(193, 154, 61, 0.35);
  color: #C19A3D;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 22px;
  transition: transform 0.3s ease;
}

.caja-beneficio-moderna:hover .icono-insignia-dorada {
  transform: scale(1.1) rotate(5deg);
  background: #C19A3D;
  color: #FFFFFF;
}

/* 6. Contacto & Footer - Logotipo visible y micro-iconos */
.seccion-contacto {
  background: linear-gradient(145deg, #3B2314, #2A180D) !important;
  box-shadow: 0 16px 45px rgba(42, 24, 13, 0.35);
}

.footer-logo-blanco {
  max-height: 75px;
  filter: brightness(0) invert(1);
  opacity: 0.95;
  transition: opacity 0.3s ease;
}

.footer-logo-blanco:hover {
  opacity: 1;
}

.contacto-dato-item {
  display: flex;
  align-items: flex-start;
  gap: 12px;
  margin-bottom: 14px;
  color: #E2D0BE;
  font-size: 0.98rem;
  line-height: 1.5;
}

.contacto-icono-svg {
  width: 20px;
  height: 20px;
  min-width: 20px;
  color: #C19A3D;
  margin-top: 2px;
}

/* 7. Botones Flotantes (WhatsApp y Carrito) */
#whatsapp-flotante-wrapper {
  position: fixed !important;
  bottom: 24px !important;
  right: 24px !important;
  top: auto !important;
  left: auto !important;
  transform: none !important;
  z-index: 99999 !important;
}

.btn-whatsapp-flotante {
  box-shadow: 0 8px 24px rgba(37, 211, 102, 0.45) !important;
}

#floating-cart-pill {
  position: fixed !important;
  bottom: 84px !important;
  right: 24px !important;
  top: auto !important;
  left: auto !important;
  z-index: 99998 !important;
  box-shadow: 0 8px 24px rgba(193, 154, 61, 0.45) !important;
}

@media (max-width: 576px) {
  #whatsapp-flotante-wrapper {
    bottom: 18px !important;
    right: 18px !important;
  }
  #floating-cart-pill {
    bottom: 74px !important;
    right: 18px !important;
  }
}
CSS;

// Escribir en custom.css
$newCss = $currentCss . "\n" . $mejorasCss;
if (@file_put_contents($cssFile, $newCss) !== false) {
    echo "  - OK: custom.css actualizado con estilos de mejora integral (" . strlen($newCss) . " bytes)\n";
} else {
    echo "  - AVISO: No se pudo escribir directamente en custom.css\n";
}

echo "\n=== 2. ACTUALIZAR MÓDULO DE WHATSAPP FLOTANTE (POSICIÓN Y TELÉFONO OFICIAL) ===\n";

$modWaHtml = <<<'HTML'
<div id="whatsapp-flotante-wrapper">
  <a 
    href="https://wa.me/593994851768?text=Hola,%20vengo%20desde%20su%20página%20web%20y%20deseo%20hacer%20un%20pedido%20de%20chocolate%20artesanal." 
    class="btn-whatsapp-flotante" 
    target="_blank" 
    rel="noopener noreferrer"
    aria-label="Pedir por WhatsApp"
  >
    <svg class="icono-wa" viewBox="0 0 32 32" width="24" height="24" fill="currentColor">
      <path d="M16.002 0C7.165 0 0 7.165 0 16.002c0 2.825.738 5.578 2.138 7.998L.069 31.854l8.037-2.108a15.93 15.93 0 007.896 2.083h.007c8.834 0 15.998-7.165 15.998-16.002C32.007 7.165 24.843 0 16.002 0zm0 29.136h-.006a13.2 13.2 0 01-6.726-1.844l-.482-.286-4.992 1.309 1.332-4.866-.314-.5a13.167 13.167 0 01-2.02-7.047c0-7.29 5.932-13.222 13.227-13.222 3.532 0 6.852 1.376 9.35 3.874a13.155 13.155 0 013.868 9.35c0 7.292-5.932 13.232-13.227 13.232zm7.254-9.9c-.397-.2-2.35-1.16-2.715-1.293-.365-.133-.63-.2-.896.2-.266.398-1.03 1.293-1.262 1.558-.232.266-.465.3-.863.1-.397-.2-1.678-.618-3.197-1.972-1.182-1.054-1.98-2.356-2.212-2.754-.233-.398-.025-.613.174-.811.179-.179.398-.465.597-.697.199-.233.266-.398.398-.664.133-.266.066-.498-.033-.697-.1-.199-.896-2.158-1.229-2.955-.323-.777-.652-.671-.896-.684l-.763-.013c-.266 0-.697.1-1.062.498-.365.398-1.394 1.361-1.394 3.32 0 1.959 1.427 3.852 1.626 4.118.2.266 2.809 4.288 6.804 6.013.951.411 1.693.656 2.271.84.954.303 1.823.26 2.51.157.766-.115 2.35-0.96 2.682-1.887.332-.927.332-1.721.232-1.887-.1-.166-.365-.266-.763-.465z"/>
    </svg>
    <span class="texto-wa">Pedir por WhatsApp</span>
  </a>
</div>
HTML;

$uWa = $pdo->prepare("UPDATE `{$prefix}modules` SET `content` = :content WHERE `id` = 111");
$uWa->execute([':content' => $modWaHtml]);
echo "  - OK: Módulo 111 (WhatsApp) actualizado con teléfono oficial +593 99 485 1768 y posición inferior.\n";

echo "\n=== 3. RECONSTRUIR LA PÁGINA DE INICIO EN SP PAGE BUILDER (ID=1) ===\n";

// SECCIÓN 1: HERO CON MAYOR ESPACIADO Y BOTONES DE ALTO CONTRASTE
$heroHtml = '<div id="inicio" class="seccion-hero" style="background: linear-gradient(135deg, #F5EBDD 0%, #EBDBC8 100%); padding: 85px 0 95px 0; border-radius: 18px; margin-bottom: 50px; position: relative; overflow: hidden; border: 1px solid rgba(193, 154, 61, 0.35);">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-7 col-md-12 mb-4 mb-lg-0">
        <div style="display: inline-flex; align-items: center; gap: 8px; background: rgba(59, 35, 20, 0.08); color: #3B2314; font-family: \'Montserrat\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; padding: 7px 18px; border-radius: 50px; margin-bottom: 22px; border: 1px solid rgba(193, 154, 61, 0.4);">
          <span style="color: #C19A3D; font-size: 1rem;">✦</span> TRADICIÓN CHOCOLATERA DESDE 1952
        </div>
        <h1 class="hero-titulo" style="font-family: \'Playfair Display\', Georgia, serif; font-size: 3.5rem; font-weight: 700; color: #3B2314; line-height: 1.15; margin-bottom: 22px;">
          Chocolate Artesanal de Ambato
        </h1>
        <p class="hero-subtitulo" style="font-family: \'Montserrat\', sans-serif; font-size: 1.25rem; color: #4A3528; margin-bottom: 36px; line-height: 1.7; max-width: 620px;">
          Elaborado con noble cacao ecuatoriano fino de aroma y el calor de nuestra serranía. Puro, aromático y 100% natural, tostado lentamente en paila de cobre tradicional.
        </p>
        <div class="hero-botones" style="display: flex; gap: 16px; flex-wrap: wrap;">
          <a href="#productos" class="hero-btn-productos">
            <span>Ver productos</span>
            <span aria-hidden="true">↓</span>
          </a>
          <a href="#historia" class="hero-btn-historia">
            <span>Nuestra historia</span>
            <span aria-hidden="true">→</span>
          </a>
        </div>
      </div>
      <div class="col-lg-5 col-md-12 text-center">
        <div class="hero-imagen-wrapper" style="position: relative;">
          <picture>
            <source srcset="images/hero_chocolate_taza.webp" type="image/webp">
            <img 
              src="images/hero_chocolate_taza.jpg" 
              alt="Taza humeante de chocolate artesanal ambateño con espuma de molinillo" 
              class="hero-imagen img-fluid" 
              style="width: 100%; border-radius: 18px; box-shadow: 0 20px 45px rgba(59, 35, 20, 0.22); border: 4px solid #FFFFFF; object-fit: cover; max-height: 440px;"
            />
          </picture>
        </div>
      </div>
    </div>
  </div>
</div>';

// SECCIÓN 2: ENCABEZADO DE PRODUCTOS
$productosHtml = '<section id="productos" class="ambato-products-intro" style="margin-bottom: 20px;">
  <div class="container">
    <div class="text-center" style="max-width: 750px; margin: 0 auto;">
      <div style="color: #C19A3D; font-family: \'Montserrat\', sans-serif; font-size: 0.88rem; font-weight: 700; letter-spacing: 2.5px; text-transform: uppercase; margin-bottom: 10px;">
        Selección Exclusiva
      </div>
      <h2 style="font-family: \'Playfair Display\', Georgia, serif; font-size: 2.6rem; color: #3B2314; margin-bottom: 14px;">
        Nuestras Especialidades de Cacao
      </h2>
      <p style="font-size: 1.15rem; color: #4A3528; line-height: 1.65;">
        Descubre nuestros sabores artesanales elaborados con granos de cacao fino de aroma ecuatoriano, recetas familiares de 1952 y sin conservantes químicos.
      </p>
    </div>
  </div>
</section>';

// SECCIÓN 3: HISTORIA CON ALINEACIÓN VERTICAL PERFECTA Y FLECHA EN EL BOTÓN
$historiaHtml = '<div id="historia" class="seccion-historia" style="background: linear-gradient(135deg, #FAF5EE 0%, #F5EBDD 100%); padding: 85px 0 95px 0; border-radius: 18px; margin-bottom: 50px; border: 1px solid rgba(193, 154, 61, 0.3); box-shadow: 0 10px 30px rgba(59, 35, 20, 0.05);">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-6 col-md-12 mb-4 mb-lg-0 text-center">
        <picture>
          <source srcset="images/historia_paila_artesanal.webp" type="image/webp">
          <img 
            src="images/historia_paila_artesanal.jpg" 
            alt="Producción artesanal de chocolate en paila de cobre tradicional en Ambato" 
            class="img-fluid historia-imagen" 
            style="width: 100%; border-radius: 18px; box-shadow: 0 18px 40px rgba(59, 35, 20, 0.18); border: 3px solid #FFFFFF; object-fit: cover; max-height: 450px;"
          />
        </picture>
      </div>
      <div class="col-lg-6 col-md-12">
        <div class="historia-texto" style="padding-left: 20px;">
          <div style="display: inline-flex; align-items: center; gap: 8px; color: #C19A3D; font-family: \'Montserrat\', sans-serif; font-size: 0.85rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 14px;">
            <span>✦</span> Herencia y Pasión
          </div>
          <h2 style="font-family: \'Playfair Display\', Georgia, serif; font-size: 2.7rem; color: #3B2314; margin-bottom: 22px; line-height: 1.2;">
            Desde 1952 en el corazón de Ambato
          </h2>
          <p style="font-size: 1.15rem; line-height: 1.8; color: #4A3528; margin-bottom: 20px;">
            Lo que comenzó como una receta entrañable en los fogones familiares de Ambato se convirtió en la esencia que acompaña las mañanas de los hogares ecuatorianos. Durante más de siete décadas hemos preservado el tostado lento a leña y la molienda tradicional en piedra.
          </p>
          <p style="font-size: 1.08rem; line-height: 1.7; color: #4A3528; margin-bottom: 32px;">
            Cada tableta encierra el respeto por nuestros agricultores locales y el orgullo de ofrecer un chocolate auténtico, libre de grasas añadidas y con el inconfundible aroma del cacao nacional fino de aroma.
          </p>
          <a href="#contacto" class="hero-btn-productos">
            <span>Conoce más y Contáctanos</span>
            <span aria-hidden="true">→</span>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>';

// SECCIÓN 4: BENEFICIOS CON INSIGNIAS CIRCULARES SVG Y EFECTOS MODERNOS
$beneficiosHtml = '<div id="beneficios" class="seccion-beneficios" style="background: linear-gradient(135deg, #F5EBDD 0%, #EBDBC8 100%); padding: 85px 0 95px 0; border-radius: 18px; margin-bottom: 50px; border: 1px solid rgba(193, 154, 61, 0.3); box-shadow: 0 10px 32px rgba(59, 35, 20, 0.06);">
  <div class="container">
    <div class="text-center mb-5" style="max-width: 750px; margin: 0 auto 50px auto;">
      <div style="color: #C19A3D; font-family: \'Montserrat\', sans-serif; font-size: 0.88rem; font-weight: 700; letter-spacing: 2px; text-transform: uppercase; margin-bottom: 10px;">
        Nuestros Valores
      </div>
      <h2 style="font-family: \'Playfair Display\', Georgia, serif; font-size: 2.6rem; color: #3B2314; margin-bottom: 14px;">
        ¿Por qué elegir nuestro chocolate?
      </h2>
      <p style="font-size: 1.12rem; color: #4A3528; line-height: 1.6;">
        Tres pilares inquebrantables que garantizan la pureza, nutrición y origen de cada gramo de chocolate.
      </p>
    </div>
    <div class="row">
      <!-- Beneficio 1: 100% Artesanal -->
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="caja-beneficio-moderna">
          <div class="icono-insignia-dorada">
            <svg viewBox="0 0 24 24" width="36" height="36" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <circle cx="12" cy="8" r="7"></circle>
              <polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"></polyline>
            </svg>
          </div>
          <h4 style="font-family: \'Playfair Display\', serif; font-size: 1.45rem; color: #3B2314; margin-bottom: 14px; font-weight: 700;">100% Artesanal</h4>
          <p style="color: #4A3528; font-size: 1.02rem; line-height: 1.65; margin: 0;">Procesos ancestrales en paila de cobre y leña seleccionada que conservan intactas las notas organolépticas del grano puro.</p>
        </div>
      </div>

      <!-- Beneficio 2: Beneficios Naturales -->
      <div class="col-lg-4 col-md-6 mb-4">
        <div class="caja-beneficio-moderna">
          <div class="icono-insignia-dorada">
            <svg viewBox="0 0 24 24" width="36" height="36" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
            </svg>
          </div>
          <h4 style="font-family: \'Playfair Display\', serif; font-size: 1.45rem; color: #3B2314; margin-bottom: 14px; font-weight: 700;">Beneficios Naturales</h4>
          <p style="color: #4A3528; font-size: 1.02rem; line-height: 1.65; margin: 0;">Rico en antioxidantes, magnesio y teobromina que aportan energía saludable, vitalidad y bienestar sin conservantes químicos.</p>
        </div>
      </div>

      <!-- Beneficio 3: Comercio Justo -->
      <div class="col-lg-4 col-md-12 mb-4">
        <div class="caja-beneficio-moderna">
          <div class="icono-insignia-dorada">
            <svg viewBox="0 0 24 24" width="36" height="36" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
              <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
              <circle cx="9" cy="7" r="4"></circle>
              <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
              <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
            </svg>
          </div>
          <h4 style="font-family: \'Playfair Display\', serif; font-size: 1.45rem; color: #3B2314; margin-bottom: 14px; font-weight: 700;">Comercio Justo</h4>
          <p style="color: #4A2E26; font-size: 1.02rem; line-height: 1.65; margin: 0;">Trato directo y pago digno a familias agricultoras de cacao fino de aroma en el campo ecuatoriano, fomentando el desarrollo local.</p>
        </div>
      </div>
    </div>
  </div>
</div>';

// SECCIÓN 5: CONTACTO Y PIE DE PÁGINA CON LOGO INVERTIDO Y MICRO-ICONOS
$contactoHtml = '<div id="contacto" class="seccion-contacto" style="background: linear-gradient(145deg, #3B2314, #2A180D); color: #F5EBDD; padding: 75px 35px 45px 35px; border-radius: 18px; border: 1px solid rgba(193, 154, 61, 0.4);">
  <div class="container">
    <div class="row">
      <div class="col-lg-4 col-md-6 mb-4">
        <div style="margin-bottom: 22px;">
          <img src="images/logo_chocolate_ambateno.svg" alt="Chocolate Ambateño" class="footer-logo-blanco" style="max-height: 60px;" />
        </div>
        <p style="color: #E2D0BE; line-height: 1.75; font-size: 1rem; margin-bottom: 18px;">
          Tradición chocolatera artesanal desde 1952. Llevamos el auténtico aroma, pureza y calidez del cacao ecuatoriano a cada rincón del país.
        </p>
        <div style="color: #C19A3D; font-size: 0.92rem; font-weight: 600;">
          Ambato • Tungurahua • Ecuador
        </div>
      </div>

      <div class="col-lg-4 col-md-6 mb-4">
        <h4 style="font-family: \'Playfair Display\', Georgia, serif; color: #FFFFFF; font-size: 1.45rem; margin-bottom: 20px; border-bottom: 2px solid #C19A3D; display: inline-block; padding-bottom: 6px;">
          Contáctanos
        </h4>
        <div class="contacto-dato-item">
          <svg class="contacto-icono-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
            <circle cx="12" cy="10" r="3"></circle>
          </svg>
          <div><strong>Ubicación:</strong> Ambato, Provincia de Tungurahua, Ecuador</div>
        </div>
        <div class="contacto-dato-item">
          <svg class="contacto-icono-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
          </svg>
          <div><strong>Teléfono:</strong> <a href="tel:+593994851768" style="color: #C19A3D; text-decoration: none; font-weight: 600;">+593 99 485 1768</a></div>
        </div>
        <div class="contacto-dato-item">
          <svg class="contacto-icono-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
          </svg>
          <div><strong>WhatsApp:</strong> <a href="https://wa.me/593994851768" target="_blank" style="color: #C19A3D; text-decoration: none; font-weight: 600;">+593 99 485 1768</a></div>
        </div>
        <div class="contacto-dato-item">
          <svg class="contacto-icono-svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
            <rect x="1" y="3" width="15" height="13"></rect>
            <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
            <circle cx="5.5" cy="18.5" r="2.5"></circle>
            <circle cx="18.5" cy="18.5" r="2.5"></circle>
          </svg>
          <div><strong>Envíos:</strong> Cobertura a nivel nacional (Quito, Guayaquil, Cuenca y todo el Ecuador)</div>
        </div>
      </div>

      <div class="col-lg-4 col-md-12 mb-4">
        <h4 style="font-family: \'Playfair Display\', Georgia, serif; color: #FFFFFF; font-size: 1.45rem; margin-bottom: 20px; border-bottom: 2px solid #C19A3D; display: inline-block; padding-bottom: 6px;">
          Horario de Atención
        </h4>
        <p style="color: #E2D0BE; margin-bottom: 10px; font-size: 1rem;">
          <strong>Lunes a Sábado:</strong> 08:30 - 18:00
        </p>
        <p style="color: #E2D0BE; margin-bottom: 24px; font-size: 1rem;">
          <strong>Domingos:</strong> Pedidos y atención directa por WhatsApp
        </p>
        <a href="https://wa.me/593994851768?text=' . urlencode('Hola, deseo realizar una consulta o pedido de Chocolate Artesanal de Ambato.') . '" target="_blank" class="btn-dorado-agregar" style="max-width: 270px; font-size: 1.05rem; padding: 13px 22px;">
          💬 Escríbenos a WhatsApp
        </a>
      </div>
    </div>

    <div class="footer-bottom" style="margin-top: 45px; padding-top: 26px; border-top: 1px solid rgba(245, 235, 221, 0.2); text-align: center; color: rgba(245, 235, 221, 0.8); font-size: 0.95rem;">
      <p style="margin: 0;">© 2026 Chocolate Artesanal de Ambato. Todos los derechos reservados. Elaborado con pasión y noble cacao fino de aroma.</p>
    </div>
  </div>
</div>';

// Obtener ID del módulo de carrusel
$modFind = $pdo->query("SELECT `id` FROM `{$prefix}modules` WHERE `module` = 'mod_articles_latest' AND `title` LIKE '%Carrusel%' LIMIT 1");
$carruselModId = (int) $modFind->fetchColumn();
if (!$carruselModId) $carruselModId = 113;

$pageStructure = [
    [
        'id' => '1700000000000',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000000',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000001',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000001',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000002',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000002',
                            'title' => '',
                            'text' => $heroHtml
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000010',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000010',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000011',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000011',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000012',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000012',
                            'title' => '',
                            'text' => $productosHtml
                        ]
                    ],
                    [
                        'id' => '1700000000013',
                        'name' => 'module',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000013',
                            'title' => '',
                            'heading_selector' => 'h3',
                            'module_type' => 'module',
                            'id' => $carruselModId,
                            'class' => 'ambato-products-module'
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000020',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000020',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000021',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000021',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000022',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000022',
                            'title' => '',
                            'text' => $historiaHtml
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000030',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000030',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000031',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000031',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000032',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000032',
                            'title' => '',
                            'text' => $beneficiosHtml
                        ]
                    ]
                ]
            ]
        ]
    ],
    [
        'id' => '1700000000040',
        'layout' => '12',
        'visibility' => true,
        'settings' => [
            'dynamicId' => '1700000000040',
            'title' => '',
            'cssClassName' => '',
            'fullscreen' => 0
        ],
        'columns' => [
            [
                'id' => '1700000000041',
                'class_name' => 'col-md-12',
                'visibility' => true,
                'settings' => [
                    'dynamicId' => '1700000000041',
                    'cssClassName' => 'col-md-12'
                ],
                'addons' => [
                    [
                        'id' => '1700000000042',
                        'name' => 'text_block',
                        'visibility' => true,
                        'settings' => [
                            'dynamicId' => '1700000000042',
                            'title' => '',
                            'text' => $contactoHtml
                        ]
                    ]
                ]
            ]
        ]
    ]
];

$jsonFinal = json_encode($pageStructure, JSON_UNESCAPED_SLASHES | JSON_UNESCAPED_UNICODE);

$uPage = $pdo->prepare("UPDATE `{$prefix}sppagebuilder` SET `text` = :text, `content` = :text, `modified` = :mod WHERE `id` = 1");
$uPage->execute([
    ':text' => $jsonFinal,
    ':mod' => date('Y-m-d H:i:s')
]);

echo "  - OK: Página id=1 de SP Page Builder actualizada con las 5 secciones mejoradas.\n";

echo "\n=== ACTUALIZACIÓN INTEGRAL COMPLETADA CON ÉXITO ===\n";
