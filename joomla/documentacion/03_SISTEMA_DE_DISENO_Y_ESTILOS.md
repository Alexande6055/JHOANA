# Sistema de Diseño, Paleta y Estilos CSS

Este documento define la identidad visual, tokens de diseño y reglas CSS personalizadas para implementar en **Helix Ultimate** y **SP Page Builder**, garantizando una experiencia visual artesanal, sofisticada y 100% responsiva para dispositivos móviles.

---

## 1. Paleta Cromática y Tokens de Color

| Nombre de Token | Código HEX | Código RGB | Uso Principal |
| :--- | :--- | :--- | :--- |
| **`--color-cafe-oscuro`** | `#3B2314` | `rgb(59, 35, 20)` | Títulos principales, encabezados, footer y botón primario |
| **`--color-crema`** | `#F5EBDD` | `rgb(245, 235, 221)` | Fondo del Hero, fondos de contraste suave, textos sobre oscuro |
| **`--color-dorado`** | `#C19A3D` | `rgb(193, 154, 61)` | Botones de compra "Agregar", bordes secundarios, iconos, precios |
| **`--color-dorado-hover`** | `#A6832F` | `rgb(166, 131, 47)` | Estado hover y active en botones dorados |
| **`--color-blanco`** | `#FFFFFF` | `rgb(255, 255, 255)` | Fondo de tarjetas de producto y legibilidad de contraste |
| **`--color-texto-cuerpo`** | `#4A3528` | `rgb(74, 53, 40)` | Párrafos, descripciones y subtítulos |
| **`--color-whatsapp`** | `#25D366` | `rgb(37, 211, 102)` | Botón flotante de WhatsApp |

---

## 2. Tipografía y Jerarquía Visual

* **Familia Tipográfica para Títulos (Headings):**
  * **Fuente:** `Playfair Display`, `Cormorant Garamond` o `Merriweather` (Google Fonts locales cargadas desde Helix).
  * **Categoría:** Serif clásico elegante.
  * **Personalidad:** Tradición, artesanía de lujo, herencia histórica desde 1952.
* **Familia Tipográfica para Cuerpo de Texto (Body Text):**
  * **Fuente:** `Montserrat` o `Inter` (Google Fonts locales).
  * **Categoría:** Sans-serif geométrico humanista.
  * **Personalidad:** Máxima legibilidad en pantallas móviles pequeñas, claridad en precios y botones.

### Escala Tipográfica Responsiva

| Nivel | Elemento | Tamaño Desktop | Tamaño Móvil | Peso (Font-Weight) |
| :--- | :--- | :--- | :--- | :--- |
| **H1** | Título Hero | `44px - 48px` | `30px - 32px` | 700 (Bold) |
| **H2** | Títulos de Sección | `34px - 36px` | `26px - 28px` | 600 (SemiBold) |
| **H3** | Nombre de Producto | `22px - 24px` | `19px - 20px` | 600 (SemiBold) |
| **H4** | Títulos de Beneficios | `18px - 20px` | `17px - 18px` | 600 (SemiBold) |
| **Body**| Párrafos de texto | `16px` | `15px` | 400 (Regular) |
| **Price**| Precios destacados | `24px` | `22px` | 700 (Bold) |

---

## 3. Hoja de Estilos CSS Personalizada (Helix Ultimate)

Copiar y pegar este bloque en el panel de administración de Joomla:  
**Helix Ultimate > Template Options > Custom Code > Custom CSS**

```css
/* ==========================================================================
   SISTEMA DE DISEÑO: CHOCOLATE ARTESANAL DE AMBATO
   ========================================================================== */

:root {
  --color-cafe-oscuro: #3B2314;
  --color-crema: #F5EBDD;
  --color-dorado: #C19A3D;
  --color-dorado-hover: #A6832F;
  --color-texto-cuerpo: #4A3528;
  --color-whatsapp: #25D366;
  --color-blanco: #FFFFFF;
  --fuente-titulos: 'Playfair Display', Georgia, serif;
  --fuente-cuerpo: 'Montserrat', -apple-system, BlinkMacSystemFont, sans-serif;
  --sombra-tarjeta: 0 10px 25px rgba(59, 35, 20, 0.08);
  --sombra-hover: 0 16px 35px rgba(59, 35, 20, 0.16);
  --radio-borde: 10px;
}

/* Tipografía base */
body {
  font-family: var(--fuente-cuerpo);
  color: var(--color-texto-cuerpo);
  background-color: var(--color-crema);
  line-height: 1.65;
  -webkit-font-smoothing: antialiased;
}

h1, h2, h3, h4, .sp-page-builder .sppb-addon-heading h1,
.sp-page-builder .sppb-addon-heading h2,
.sp-page-builder .sppb-addon-heading h3 {
  font-family: var(--fuente-titulos) !important;
  color: var(--color-cafe-oscuro) !important;
  letter-spacing: -0.02em;
}

/* Desplazamiento suave para el menú One-Page */
html {
  scroll-behavior: smooth;
}

/* Header de Helix Ultimate adaptado */
#sp-header {
  background-color: rgba(245, 235, 221, 0.96) !important;
  backdrop-filter: blur(8px);
  border-bottom: 1px solid rgba(193, 154, 61, 0.25);
  box-shadow: 0 2px 10px rgba(59, 35, 20, 0.05);
}

.sp-megamenu-parent > li > a {
  font-family: var(--fuente-cuerpo) !important;
  font-weight: 600 !important;
  font-size: 15px !important;
  color: var(--color-cafe-oscuro) !important;
  text-transform: capitalize;
  transition: color 0.3s ease;
}

.sp-megamenu-parent > li.active > a,
.sp-megamenu-parent > li:hover > a {
  color: var(--color-dorado) !important;
}

/* ==========================================================================
   ESTILOS DE SECCIÓN Y BOTONES
   ========================================================================== */

/* Botón Primario Café */
.btn-cafe, .sppb-btn-primary {
  background-color: var(--color-cafe-oscuro) !important;
  color: var(--color-crema) !important;
  border: 2px solid var(--color-cafe-oscuro) !important;
  border-radius: var(--radio-borde) !important;
  font-weight: 600 !important;
  padding: 12px 26px !important;
  transition: all 0.3s ease-in-out !important;
  text-decoration: none !important;
  display: inline-block;
}

.btn-cafe:hover, .sppb-btn-primary:hover {
  background-color: #26160C !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(59, 35, 20, 0.25);
}

/* Botón Secundario Dorado */
.btn-dorado-outline {
  background-color: transparent !important;
  color: var(--color-cafe-oscuro) !important;
  border: 2px solid var(--color-dorado) !important;
  border-radius: var(--radio-borde) !important;
  font-weight: 600 !important;
  padding: 12px 26px !important;
  transition: all 0.3s ease-in-out !important;
  text-decoration: none !important;
  display: inline-block;
}

.btn-dorado-outline:hover {
  background-color: var(--color-dorado) !important;
  color: #FFFFFF !important;
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(193, 154, 61, 0.3);
}

/* Botón de Agregar / Compra Dorada */
.btn-agregar {
  background-color: var(--color-dorado) !important;
  color: #FFFFFF !important;
  border: none !important;
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
}

.btn-agregar:hover {
  background-color: var(--color-dorado-hover) !important;
  color: #FFFFFF !important;
  transform: scale(1.02);
  box-shadow: 0 4px 12px rgba(193, 154, 61, 0.35);
}

/* ==========================================================================
   TARJETAS DE PRODUCTOS
   ========================================================================== */

.tarjeta-producto {
  background: var(--color-blanco);
  border-radius: 12px;
  overflow: hidden;
  box-shadow: var(--sombra-tarjeta);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  padding: 24px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  height: 100%;
  border: 1px solid rgba(193, 154, 61, 0.15);
}

.tarjeta-producto:hover {
  transform: translateY(-6px);
  box-shadow: var(--sombra-hover);
  border-color: var(--color-dorado);
}

.tarjeta-producto .img-contenedor {
  text-align: center;
  margin-bottom: 18px;
  border-radius: 8px;
  overflow: hidden;
}

.tarjeta-producto .img-contenedor img {
  max-width: 100%;
  height: 220px;
  object-fit: contain;
  transition: transform 0.4s ease;
}

.tarjeta-producto:hover .img-contenedor img {
  transform: scale(1.05);
}

.tarjeta-producto .precio {
  font-family: var(--fuente-cuerpo);
  font-size: 24px;
  font-weight: 700;
  color: var(--color-dorado);
  margin: 12px 0 16px 0;
}

/* ==========================================================================
   OPTIMIZACIONES MÓVILES (RESPONSIVE FIRST)
   ========================================================================== */

@media (max-width: 768px) {
  .tarjeta-producto {
    margin-bottom: 24px;
    padding: 18px;
  }
  
  .sppb-btn-primary, .btn-dorado-outline {
    width: 100%;
    text-align: center;
    margin-bottom: 12px;
  }
  
  .tarjeta-producto .img-contenedor img {
    height: 180px;
  }
}
```

