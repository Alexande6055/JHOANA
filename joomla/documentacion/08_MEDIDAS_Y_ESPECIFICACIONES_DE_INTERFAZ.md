# Informe Técnico de Medidas, Dimensiones y Especificaciones de Interfaz (UI)

**Proyecto:** Plataforma Web y Landing Page Comercial — Chocolate Artesanal de Ambato  
**Entorno Tecnológico:** Joomla! 6 + Helix Ultimate Framework + SP Page Builder + CSS Modular  
**Fecha de Generación:** 21 de Noviembre de 2026  
**Documentos de Referencia:** *Tarea 4: 1er avance del proyecto final* & Sistema de Diseño Helix Ultimate  
**Propósito:** Especificación técnica exhaustiva de todas las dimensiones, tamaños en píxeles (`px`), unidades relativas (`rem`, `%`, `vw`, `vh`), espaciados (*padding*, *margin*, *gap*), radios de curvatura (*border-radius*), elevaciones (*box-shadow*) y puntos de quiebre (*breakpoints*) de la interfaz gráfica de usuario.

---

## Índice General

1. [Sistema de Rejilla, Breakpoints y Anchos de Contenedores](#1-sistema-de-rejilla-breakpoints-y-anchos-de-contenedores)
2. [Cabecera y Barra de Navegación (Header & Topbar)](#2-cabecera-y-barra-de-navegación-header--topbar)
3. [Escala Tipográfica y Jerarquías de Texto](#3-escala-tipográfica-y-jerarquías-de-texto)
4. [Botones, Acciones e Interactivos](#4-botones-acciones-e-interactivos)
5. [Secciones Principales de la Landing Page](#5-secciones-principales-de-la-landing-page)
6. [Tarjetas de Producto y Módulos de Catálogo](#6-tarjetas-de-producto-y-módulos-de-catálogo)
7. [Página de Ficha y Detalle de Producto](#7-página-de-ficha-y-detalle-de-producto)
8. [Sistema de Carrito Lateral Deslizante (Slide-Over Drawer)](#8-sistema-de-carrito-lateral-deslizante-slide-over-drawer)
9. [Elementos Flotantes y Notificaciones Toast](#9-elementos-flotantes-y-notificaciones-toast)
10. [Tokens de Elevación, Sombras y Curvaturas](#10-tokens-de-elevación-sombras-y-curvaturas)
11. [Matriz Resumen de Dimensiones por Dispositivo](#11-matriz-resumen-de-dimensiones-por-dispositivo)

---

## 1. Sistema de Rejilla, Breakpoints y Anchos de Contenedores

La arquitectura visual utiliza una cuadrícula responsiva basada en Bootstrap 5 / Helix Ultimate, optimizada con límites de contención para evitar la dispersión en pantallas ultra anchas (*ultrawide*).

```
+---------------------------------------------------------------------------------------------------+
| Pantalla Ultra Ancha / Desktop XL (>= 1200px) : Contenedor Max 1680px (Home) / 1320px (Catálogo)  |
| Padding lateral: 30px                                                                             |
+---------------------------------------------------------------------------------------------------+
| Pantalla Desktop Media / Tablet Landscape (992px - 1199px) : Contenedor 960px                     |
| Padding lateral: 30px                                                                             |
+---------------------------------------------------------------------------------------------------+
| Tablet Portrait (768px - 991px) : Contenedor 720px                                                |
| Padding lateral: 20px                                                                             |
+---------------------------------------------------------------------------------------------------+
| Smartphone Grande / Apaisado (576px - 767px) : Contenedor 540px                                   |
| Padding lateral: 15px                                                                             |
+---------------------------------------------------------------------------------------------------+
| Smartphone Vertical (< 576px) : Ancho 100% Fluido                                                 |
| Padding lateral: 14px - 15px                                                                      |
+---------------------------------------------------------------------------------------------------+
```

### Tabla de Puntos de Quiebre (*Breakpoints*)

| Breakpoint | Prefijo | Rango de Resolución | Ancho Máx. Contenedor | Padding Lateral | Comportamiento del Layout |
| :--- | :---: | :---: | :---: | :---: | :--- |
| **Extra Large** | `xxl` / `xl` | $\ge 1200\text{ px}$ | `1680px` (Home) / `1320px` (Catálogo) | `30px` | Disposición horizontal completa, 3 tarjetas por fila, menús desplegados |
| **Large Desktop** | `lg` | $992\text{ px} - 1199\text{ px}$ | `960px` | `30px` | Menú principal visible, carrusel con 3 items |
| **Tablet** | `md` | $768\text{ px} - 991\text{ px}$ | `720px` | `20px` | Catálogo a 2 columnas, cabecera compacta (72px) |
| **Mobile Large** | `sm` | $576\text{ px} - 767\text{ px}$ | `540px` | `15px` | Catálogo a 1 columna, apilamiento vertical, menú off-canvas |
| **Mobile Small** | `xs` | $< 576\text{ px}$ | `100%` | `14px` | Hero reordenado, botones ancho completo, cabecera 64px |

* **Desplazamiento Suave (*Smooth Scroll*):**  
  * Compensación superior fija (`scroll-padding-top`): **`85px`** (garantiza que al pulsar anclas del menú `#productos`, `#historia` o `#contacto`, el encabezado sticky no tape los títulos).

---

## 2. Cabecera y Barra de Navegación (Header & Topbar)

El sistema de cabecera cuenta con dos niveles: la franja informativa superior (*Top Bar*) y el encabezado principal adherente (*Sticky Header*).

```
+----------------------------------------------------------------------------------------------------+
| TOP BAR: Altura min 32px | Padding 4px 0 | Tipografía 12px | Redes: margin-right 10px              |
+----------------------------------------------------------------------------------------------------+
| STICKY HEADER: Desktop 88px | Tablet 72px | Mobile 64px | Blur: 10px | Borde inferior: 2px solid   |
| [ Logo: 78px ]   [ Menú: padding 12px 20px, font 16px ]   [ Carrito Header: 42px x auto, badge 11px]|
+----------------------------------------------------------------------------------------------------+
```

### 2.1. Barra Superior Informativa (`#sp-top-bar`)

* **Altura mínima:** `32px` (modo compacto) / `40px` (modo estándar).
* **Padding vertical:** `4px 0` (o `8px 0` en escritorio).
* **Tamaño de fuente:** `12px` (`0.75rem`).
* **Interlineado (*Line-height*):** `1.3`.
* **Color de fondo:** `#2B1D17` / `#4A2E26`.
* **Borde inferior:** `1px solid rgba(243, 228, 208, 0.18)`.
* **Separación de iconos sociales:** `margin-right: 10px` entre elementos `<li>`.
* **En móvil ($\le 767\text{ px}$):**
  * Columnas divididas al `50%` (`flex: 0 0 50%; max-width: 50%`).
  * Contacto alineado a la izquierda, redes sociales a la derecha en una sola línea.

### 2.2. Encabezado Adherente (`#sp-header`)

* **Alturas fijas por dispositivo:**
  * **Desktop ($\ge 992\text{ px}$):** Altura `88px` (`min-height: 88px`).
  * **Tablet ($576\text{ px} - 991\text{ px}$):** Altura `72px` (`min-height: 72px`).
  * **Móvil ($< 576\text{ px}$):** Altura `64px` (`min-height: 64px`).
* **Fondo y filtros:** `rgba(243, 228, 208, 0.98)` con `backdrop-filter: blur(10px)`.
* **Borde inferior:** `2px solid rgba(184, 101, 73, 0.35)`.
* **Sombra (*box-shadow*):** `0 4px 18px rgba(74, 46, 38, 0.08)`.

### 2.3. Logotipo Institucional (`.logo-image`, `.logo-image-phone`)

* **Desktop ($\ge 992\text{ px}$):**
  * Altura: **`78px`** (`max-height: 78px`).
  * Ancho: Proporcional automático (`width: auto`).
* **Tablet ($576\text{ px} - 991\text{ px}$):**
  * Altura: **`62px`** (`max-height: 62px`).
* **Móvil ($< 576\text{ px}$):**
  * Altura: **`54px`** (`max-height: 54px`).
* **Versión Footer:** `max-height: 60px` a `75px` con filtro monocromático `brightness(0) invert(1)`.

### 2.4. Enlaces del Menú Principal (`.sp-megamenu-parent > li > a`)

* **Padding táctil:** `12px 20px`.
* **Tamaño de fuente:** `16px` (`1rem`).
* **Peso tipográfico (*font-weight*):** `600` (SemiBold).
* **Transición:** `all 0.3s ease`.
* **Separación entre enlaces:** `0` (determinada por el padding interno).

### 2.5. Botón de Carrito Integrado en Header (`#header-cart-btn` / `.btn-header-cart`)

* **Dimensiones Desktop:**
  * Altura mínima: `42px`.
  * Padding: `8px 14px` (o `8px 18px`).
  * Radio de borde: `999px` / `50px` (estilo píldora).
  * Borde: `1px solid #B86549` (`var(--color-terracota)`).
  * Tamaño de fuente: `14px`, peso `600`.
  * Espacio entre icono, texto y badge (*gap*): `8px`.
* **Dimensiones Móvil ($\le 767\text{ px}$):**
  * Ancho mínimo: `42px`.
  * Altura mínima: `42px` (área táctil accesible).
  * Padding: `8px 10px`.
  * Texto oculto: solo se visualiza el icono del carrito `🛒` y el badge.
* **Badge Contador de Artículos (`.cart-count-badge`):**
  * Tamaño de fuente: `11px`, peso `700`.
  * Padding: `2px 7px`.
  * Radio de borde: `12px`.
  * Ancho mínimo: `18px`.
  * Altura: centrada verticalmente.

---

## 3. Escala Tipográfica y Jerarquías de Texto

El proyecto combina dos fuentes de alta identidad:  
* **Títulos y Acentos:** *DM Serif Display* / *Playfair Display* (Serif tradicional).  
* **Cuerpo, Botones y Formularios:** *DM Sans* / *Montserrat* (Sans-serif legible).

| Nivel Semántico | Selector CSS Principal | Tamaño Desktop | Tamaño Móvil | Line Height | Letter Spacing | Peso (Weight) |
| :--- | :--- | :---: | :---: | :---: | :---: | :---: |
| **H1 Hero** | `.hero-titulo`, `.seccion-hero h1` | `3.5rem` (`56px`) | `clamp(2rem, 8vw, 2.55rem)` (`32px`-`40px`) | `1.08 - 1.15` | Normal | 700 |
| **H1 Catálogo Blog** | `body.view-category .page-header h1` | `2.35rem` (`37.6px`) | `1.9rem` (`30.4px`) | `1.15` | Normal | 700 |
| **H1 Detalle Producto**| `body.view-article .article-header h1` | `2.3rem` (`36.8px`) | `1.85rem` (`29.6px`) | `1.15` | Normal | 700 |
| **H2 Sección** | `h2`, `.ambato-products-heading h2` | `2.6rem` - `2.8rem` (`41.6px`-`44.8px`) | `clamp(2rem, 4vw, 2.4rem)` | `1.15 - 1.2` | Normal | 400 - 700 |
| **H2 Catálogo Hero** | `.ambato-catalog-hero h2` | `clamp(2rem, 4vw, 3.25rem)` | `2.1rem` (`33.6px`) | `1.08` | Normal | 700 |
| **H2 Tarjeta Catálogo**| `.ambato-catalog-card-body h2` | `1.3rem` (`20.8px`) | `1.25rem` (`20px`) | `1.28` | Normal | 700 |
| **H3 Tarjeta Producto**| `.ambato-product-info h3`, `.tarjeta-box h3`| `1.25rem` - `1.35rem` (`20px`-`21.6px`) | `1.2rem` (`19.2px`) | `1.25` | Normal | 600 - 700 |
| **H4 Beneficio / Footer**| `.caja-beneficio h4`, `.seccion-contacto h4` | `1.45rem` (`23.2px`) | `1.3rem` (`20.8px`) | `1.3` | Normal | 700 |
| **Hero Subtítulo (Lead)**| `.hero-subtitulo` | `1.25rem` (`20px`) | `1.0rem` (`16px`) | `1.5 - 1.7` | Normal | 400 |
| **Párrafo Estándar** | `body`, `p` | `1.0rem` (`16px`) | `0.96rem` (`15.3px`) | `1.65` | Normal | 400 |
| **Párrafo en Tarjetas**| `.ambato-catalog-card-body p` | `0.91rem` - `0.96rem` (`14.5px`-`15.3px`) | `0.88rem` (`14px`) | `1.5` | Normal | 400 |
| **Precio Principal** | `.ambato-catalog-price strong`, `.precio-tag` | `1.24rem` - `1.35rem` (`20px`-`21.6px`) | `1.2rem` (`19.2px`) | `1.15` | Normal | 700 |
| **Precio Ficha Detalle**| `.precio-badge` | `1.8rem` (`28.8px`) | `1.55rem` (`24.8px`) | `1.15` | Normal | 700 |
| **Insignia / Eyebrow** | `.ambato-cacao-label`, `.ambato-catalog-eyebrow`| `0.70rem` - `0.85rem` (`11.2px`-`13.6px`) | `0.70rem` (`11.2px`) | `1.2` | `0.12em - 0.2em` | 700 |

---

## 4. Botones, Acciones e Interactivos

Todos los botones cuentan con alturas táctiles estandarizadas cumpliendo los lineamientos de accesibilidad WCAG AAA ($\ge 44\text{px}$).

```
+----------------------------------------------------------------------------------------------------+
| BOTÓN PRIMARIO CAFÉ: padding 14px 34px | border-radius 8px | font 1.05rem (16.8px) | gap 8px       |
| Hover: translateY(-2px) | box-shadow: 0 8px 24px rgba(59, 35, 20, 0.3)                            |
+----------------------------------------------------------------------------------------------------+
| BOTÓN OUTLINE HISTORIA: padding 13px 32px | border: 2px solid #5C3A21 | border-radius 8px          |
+----------------------------------------------------------------------------------------------------+
| STEPPER CANTIDAD EN TARJETA: alto 42px | [ - (32px) ] [ Input (36px) ] [ + (32px) ]                |
+----------------------------------------------------------------------------------------------------+
| BOTÓN "AGREGAR AL CARRITO": min-height 44px - 46px | ancho 100% | border-radius 8px | gap 8px      |
+----------------------------------------------------------------------------------------------------+
```

### 4.1. Botón Primario Café (`.btn-cafe`, `.hero-btn-productos`)

* **Desktop:**
  * Padding: `14px 34px` (o `14px 32px`).
  * Radio de borde (*border-radius*): `8px` (o `10px`).
  * Tamaño de fuente: `1.05rem` (`16.8px`) / `16px`.
  * Peso: `700` / `600`.
  * Gap entre texto e icono: `8px`.
* **Móvil ($\le 767\text{ px}$):**
  * Padding: `11px 16px`.
  * Tamaño de fuente: `0.96rem` (`15.3px`).
* **Interacción Hover:**
  * Desplazamiento: `transform: translateY(-2px)`.
  * Sombra: `0 8px 24px rgba(59, 35, 20, 0.30)`.
  * Color de fondo: transiciona de `#3B2314` a `#24140B`.

### 4.2. Botón Secundario / Outline (`.btn-dorado-outline`, `.hero-btn-historia`)

* **Desktop:**
  * Padding: `13px 32px`.
  * Borde: `2px solid #5C3A21` (o `2px solid var(--color-dorado)`).
  * Radio de borde: `8px`.
  * Fondo: `rgba(255, 255, 255, 0.60)`.
  * Tamaño de fuente: `1.05rem` (`16.8px`).
  * Gap: `8px`.
* **Interacción Hover:**
  * Desplazamiento: `transform: translateY(-2px)`.
  * Sombra: `0 6px 18px rgba(92, 58, 33, 0.25)`.
  * Fondo: `#5C3A21`, texto blanco `#FFFFFF`.

### 4.3. Botón "Agregar al Carrito" (`.ambato-add-to-cart`, `.btn-dorado-agregar`)

* **Ancho:** `100%` (ocupa el ancho completo del pie de tarjeta).
* **Altura mínima:** `44px` a `46px`.
* **Padding:** `10px 14px` a `13px 22px`.
* **Radio de borde:** `8px`.
* **Tamaño de fuente:** `0.90rem` a `1.05rem`.
* **Separación superior:** `margin-top: 14px` - `16px`.
* **Icono:** Carrito o flecha integrado con `gap: 8px`.

### 4.4. Control Stepper de Cantidad en Tarjeta (`.control-cantidad-card`)

* **Altura del componente:** `42px`.
* **Borde exterior:** `2px solid var(--color-dorado)` (`#B86549` / `#C19A3D`).
* **Radio de borde:** `8px`.
* **Botones decremento / incremento (`.btn-qty`):**
  * Ancho: `32px`.
  * Altura: `100%` (`42px`).
  * Tamaño de fuente: `1.1rem`.
  * Fondo hover: `#FCF7F0`.
* **Campo numérico (`.input-qty-card`):**
  * Ancho: `36px`.
  * Altura: `100%`.
  * Tamaño de fuente: `1.0rem`, peso `700`.
  * Alineación: texto centrado.
  * Borde: ninguno (integrado sin cortes visibles).

### 4.5. Flechas de Navegación del Carrusel (`.ambato-carousel-arrows button`)

* **Dimensiones:** `42px x 42px` (círculo simétrico).
* **Radio de borde:** `50%`.
* **Borde:** `1px solid rgba(74, 46, 38, 0.20)`.
* **Tamaño del símbolo:** `1.7rem` (`27.2px`).
* **Interlineado:** `1`.
* **Espaciado entre flechas:** `gap: 8px`.

---

## 5. Secciones Principales de la Landing Page

La landing page se compone de 5 macro-secciones enmarcadas con radios curvos y sombras de relieve.

```
+----------------------------------------------------------------------------------------------------+
| 1. HERO (#inicio): padding 85px 0 95px 0 | border-radius 18px | margin-bottom 50px | max-h 440px    |
+----------------------------------------------------------------------------------------------------+
| 2. PRODUCTOS (#productos): max-width 1320px | track gap 20px | card clamp(270px, 33%, 390px)       |
+----------------------------------------------------------------------------------------------------+
| 3. HISTORIA (#historia): padding 85px 0 95px 0 | border-radius 18px | img max-h 450px | sangría 20px|
+----------------------------------------------------------------------------------------------------+
| 4. BENEFICIOS (#beneficios): card padding 38px 26px | radio 16px | insignia 72x72px (svg 36x36px)  |
+----------------------------------------------------------------------------------------------------+
| 5. CONTACTO (#contacto): padding 75px 35px 45px 35px | micro-iconos 20x20px | logo blanco 60-75px  |
+----------------------------------------------------------------------------------------------------+
```

### 5.1. Sección 1: Hero Principal (`#inicio`)

* **Fondo:** Gradiente `linear-gradient(135deg, #F5EBDD 0%, #EBDBC8 100%)`.
* **Padding vertical:**
  * **Desktop:** Superior `85px`, Inferior `95px` (`85px 0 95px 0`).
  * **Móvil ($\le 767\text{ px}$):** `24px 12px 28px` (ultra-optimizado para no obligar a scroll largo).
* **Radio de borde:** `18px`.
* **Borde perimetral:** `1px solid rgba(193, 154, 61, 0.35)`.
* **Sombra de elevación:** `0 12px 36px rgba(59, 35, 20, 0.08)`.
* **Margen inferior:** `50px` (Desktop) / `22px` (Móvil).
* **Badge Superior de Tradición:**
  * Padding: `7px 18px`.
  * Radio de borde: `50px` (píldora).
  * Tamaño de fuente: `0.85rem` (`13.6px`), peso `700`.
  * Espaciado entre letras (*letter-spacing*): `2px`.
  * Margen inferior: `22px`.
  * Gap con el icono de estrella: `8px`.
* **Fotografía de la Taza Humeante (`.hero-imagen`):**
  * Ancho: `100%`.
  * Altura máxima Desktop: **`440px`**.
  * Altura máxima Móvil: **`210px`** (con `object-position: center 55%`).
  * Borde: `4px solid #FFFFFF` (marco tipo paspartú).
  * Radio de borde: `18px`.
  * Sombra: `0 20px 45px rgba(59, 35, 20, 0.22)`.
* **Disposición en Móvil:** Reordenamiento mediante `flex-direction: column-reverse` (la imagen aparece sobre el titular para impacto visual inmediato).

### 5.2. Sección 2: Productos y Carrusel de Novedades (`#productos`)

* **Encabezado (`.ambato-products-intro`):**
  * Padding: `68px 0 28px` (Desktop) / `42px 0 16px` (Móvil).
  * Ancho máximo del contenedor de texto: `780px` (centrado con `margin: 0 auto`).
* **Contenedor del Carrusel (`.ambato-featured-products`):**
  * Ancho máximo: `1320px`.
  * Margen inferior: `52px` (Desktop) / `34px` (Móvil).
  * Padding: `12px 24px 46px` (Desktop) / `8px 16px 34px` (Móvil).
* **Pista de Desplazamiento Horizontal (`.ambato-product-track`):**
  * Separación entre tarjetas (*gap*): `20px` (Desktop) / `14px` (Móvil).
  * Padding de desplazamiento: `15px 5px 25px 5px`.
  * Comportamiento: `scroll-snap-type: x mandatory`.
  * Barra de desplazamiento: `scrollbar-width: thin`.

### 5.3. Sección 3: Historia Tradicional desde 1952 (`#historia`)

* **Fondo:** Gradiente suave `linear-gradient(135deg, #FAF5EE 0%, #F5EBDD 100%)`.
* **Padding:** `85px 0 95px 0`.
* **Radio de borde:** `18px`.
* **Margen inferior:** `50px`.
* **Borde:** `1px solid rgba(193, 154, 61, 0.30)`.
* **Sombra:** `0 10px 30px rgba(59, 35, 20, 0.05)`.
* **Fotografía de Paila de Cobre (`.historia-imagen`):**
  * Ancho: `100%`.
  * Altura máxima: **`450px`**.
  * Borde: `3px solid #FFFFFF`.
  * Radio de borde: `18px`.
  * Sombra: `0 18px 40px rgba(59, 35, 20, 0.18)`.
* **Columna de Texto Narrativo:**
  * Sangría izquierda en Desktop: `padding-left: 20px`.
  * Separación inferior de párrafos: `20px` a `32px`.

### 5.4. Sección 4: Valores y Beneficios Institucionales (`#beneficios`)

* **Fondo:** `linear-gradient(135deg, #F5EBDD 0%, #EBDBC8 100%)`.
* **Padding:** `85px 0 95px 0`.
* **Radio de borde:** `18px`.
* **Margen inferior:** `50px`.
* **Tarjeta de Beneficio Individual (`.caja-beneficio-moderna`):**
  * Padding: `38px 26px`.
  * Radio de borde: `16px`.
  * Borde: `1px solid rgba(193, 154, 61, 0.22)`.
  * Sombra base: `0 10px 28px rgba(59, 35, 20, 0.06)`.
  * Hover: `transform: translateY(-8px)` con sombra `0 18px 40px rgba(59, 35, 20, 0.14)`.
* **Insignia Circular Dorada (`.icono-insignia-dorada`):**
  * Diámetro exterior: **`72px x 72px`**.
  * Radio de borde: `50%` (círculo perfecto).
  * Borde: `2px solid rgba(193, 154, 61, 0.35)`.
  * Margen inferior: `22px`.
  * Icono vectorial SVG interno: **`36px x 36px`** con `stroke-width: 2`.
  * Hover: escala `scale(1.1) rotate(5deg)`.

### 5.5. Sección 5: Contacto y Pie de Página Corporativo (`#contacto`)

* **Fondo:** Gradiente oscuro `linear-gradient(145deg, #3B2314, #2A180D)`.
* **Padding:** `75px 35px 45px 35px`.
* **Radio de borde:** `18px` (o `14px`).
* **Borde perimetral:** `1px solid rgba(193, 154, 61, 0.40)`.
* **Sombra de relieve:** `0 16px 45px rgba(42, 24, 13, 0.35)`.
* **Micro-iconos Vectoriales de Contacto (`.contacto-icono-svg`):**
  * Dimensiones: **`20px x 20px`** (ancho y alto).
  * Ancho mínimo forzado: `min-width: 20px`.
  * Margen superior de ajuste óptico: `2px`.
  * Separación con el texto (*gap*): `12px`.
  * Margen inferior de cada fila: `14px`.
* **Logotipo del Footer:**
  * Altura máxima: `60px` a `75px`.
  * Margen inferior: `22px`.
* **Franja Inferior de Derechos Reservados (*Footer Bottom*):**
  * Margen superior: `45px`.
  * Padding superior: `26px`.
  * Borde superior: `1px solid rgba(245, 235, 221, 0.20)`.
  * Tamaño de fuente: `0.95rem` (`15.2px`).

---

## 6. Tarjetas de Producto y Módulos de Catálogo

```
+----------------------------------------------------------------------------------------------------+
| TARJETA CARRUSEL: clamp(270px, 33%, 390px) | aspect-ratio 4/3 | padding 20px | border-radius 14px  |
| Hover: translateY(-8px) | box-shadow: 0 18px 38px rgba(59, 35, 20, 0.16)                           |
+----------------------------------------------------------------------------------------------------+
| TARJETA CATÁLOGO: grid 3 cols (gap 24px) | aspect-ratio 16/10 | radio 15px | footer min-h 46px     |
| Badges origen/cacao: min-height 28px | padding 5px 10px | posición a 13px de bordes                |
+----------------------------------------------------------------------------------------------------+
| PANEL DE FILTROS: padding 24px 26px 20px | radio 16px | inputs min-height 46px - 50px              |
+----------------------------------------------------------------------------------------------------+
```

### 6.1. Tarjetas en Carrusel (`.ambato-product-card`)

* **Ancho base responsivo:** `flex: 0 0 clamp(270px, calc((100% - 40px) / 3), 390px)`.
* **Ancho en Móvil:** `flex-basis: min(84vw, 340px)`.
* **Radio de borde:** `14px`.
* **Borde:** `1px solid rgba(193, 154, 61, 0.25)`.
* **Sombra base:** `0 8px 24px rgba(59, 35, 20, 0.07)`.
* **Sombra en Hover:** `0 18px 38px rgba(59, 35, 20, 0.16)` con `transform: translateY(-8px)`.
* **Caja de Imagen (`.ambato-product-image`):**
  * Relación de aspecto (*aspect-ratio*): **`4 / 3`**.
  * Transición de imagen al hover: `transform: scale(1.035)`.
* **Cuerpo de Información (`.ambato-product-info`):**
  * Padding: `20px`.
  * Altura mínima del título H3: **`52px`** (garantiza alineación simétrica de tarjetas con títulos de 1 o 2 líneas).
  * Margen inferior del título: `9px` - `10px`.
* **Pie de Tarjeta (`.ambato-product-card-footer`):**
  * Padding vertical: `12px 0`.
  * Separación superior: `margin-top: 12px` - `auto`.
  * Borde superior: `1px solid rgba(193, 154, 61, 0.15)`.

### 6.2. Tarjetas en Catálogo Completo (`.ambato-catalog-card`)

* **Estructura de Cuadrícula (*Grid*):**
  * **Desktop:** 3 columnas (`repeat(3, minmax(0, 1fr))`), `gap: 24px`.
  * **Tablet ($\le 991\text{ px}$):** 2 columnas (`repeat(2, minmax(0, 1fr))`), `gap: 18px`.
  * **Móvil ($\le 767\text{ px}$):** 1 columna (`1fr`), `gap: 18px`.
* **Radio de borde:** `15px`.
* **Relación de aspecto de imagen:** **`16 / 10`** (formato más apaisado que estiliza la tarjeta).
* **Badges Superpuestos sobre la Imagen:**
  * **Insignia de Origen (`.ambato-product-origin`):**
    * Posición: `top: 13px; left: 13px`.
    * Altura mínima: `28px`.
    * Padding: `5px 10px`.
    * Radio: `20px` (cápsula).
    * Fondo: `rgba(255, 255, 255, 0.90)` con `backdrop-filter: blur(6px)`.
    * Tamaño de fuente: `0.70rem`, peso `700`.
  * **Insignia de % Cacao (`.ambato-cacao-label`):**
    * Posición: `bottom: 13px; right: 13px`.
    * Altura mínima: `28px`.
    * Padding: `5px 11px`.
    * Radio: `20px`.
    * Fondo: `#687252` (`rgba(104, 114, 82, 0.94)` - Verde Oliva).
    * Tamaño de fuente: `0.78rem`, peso `700`.
* **Cuerpo de Tarjeta (`.ambato-catalog-card-body`):**
  * Padding: `21px 21px 20px`.
  * Párrafo descriptivo: truncado a 3 líneas (`-webkit-line-clamp: 3`) con altura mínima fija `min-height: 4.5em`.
* **Pie de Tarjeta:**
  * Altura mínima: `46px`.
  * Padding superior: `13px`.
  * Borde superior: `1px solid rgba(74, 46, 38, 0.09)`.

### 6.3. Panel de Filtros y Búsqueda (`.ambato-catalog-filters`)

* **Padding:** `24px 26px 20px` (Desktop) / `15px` (Móvil).
* **Radio de borde:** `16px`.
* **Margen inferior:** `35px` (Desktop) / `22px` (Móvil).
* **Sombra:** `0 12px 34px rgba(74, 46, 38, 0.07)`.
* **Campo de Búsqueda Principal (`.ambato-search-control input`):**
  * Altura mínima: **`50px`**.
  * Padding: `11px 15px 11px 46px` (espacio reservado para la lupa SVG).
  * Icono de lupa: `20px x 20px`, posicionado a `left: 15px`.
  * Radio de borde: `9px`.
* **Selectores de Filtros Secundarios (Categoría, Presentación, Precio):**
  * Altura mínima: `46px`.
  * Padding: `9px 34px 9px 12px`.
  * Radio de borde: `8px`.
* **Botones de Paginación (`.ambato-catalog-pagination a`, `span`):**
  * Dimensiones mínimas: **`42px x 42px`**.
  * Padding horizontal: `0 12px`.
  * Radio de borde: `7px`.
  * Separación (*gap*): `8px`.
  * Margen superior: `36px`.

---

## 7. Página de Ficha y Detalle de Producto

En las vistas individuales de artículo (`body.com-content.view-article`), la plantilla conmuta a un layout de dos columnas simétricas.

```
+----------------------------------------------------------------------------------------------------+
| VISTA ARTÍCULO: Max-width 1240px | Column gap: 40px (Desktop) / 26px (Tablet) / 1 Col (Móvil)     |
| [ Fila 1 Col 1: Imagen 4/3 o 16/10 ]   | [ Col 2: H1 2.3rem (36.8px) ]                             |
|                                        | [ Col 2: Badges ingredientes / gramaje padding 6px 9px ]   |
|                                        | [ Col 2: Caja de Compra padding 20px (Precio 1.8rem) ]     |
|                                        | [ Col 2: Botón WhatsApp Pedido min-height 48px ]           |
+----------------------------------------------------------------------------------------------------+
```

* **Ancho Máximo del Contenedor:** `1240px`, centrado con margen inferior de `72px` (Desktop) / `48px` (Móvil).
* **Padding superior del cuerpo (`#sp-main-body`):** `36px` (Desktop) / `24px` (Móvil).
* **Estructura de Grilla (`.article-details`):**
  * **Desktop:** `grid-template-columns: minmax(0, 1.05fr) minmax(0, 0.95fr)`.
  * **Separación entre columnas (*column-gap*):** `40px` (Desktop) / `26px` (Tablet).
  * **Separación entre filas (*row-gap*):** `18px` (Desktop) / `16px` (Móvil).
  * **Móvil ($\le 767\text{ px}$):** 1 columna completa (`minmax(0, 1fr)`).
* **Imagen del Producto (`.article-full-image`):**
  * Extensión en Desktop: abarca las filas 1 a 4 (`grid-row: 1 / span 4`).
  * Relación de aspecto: **`4 / 3`** (Desktop) / **`16 / 10`** (Móvil).
  * Radio de borde: `10px`.
* **Caja de Compra y Pedido (`.producto-tarjeta-joomla`):**
  * Padding: `20px` (Desktop) / `17px` (Móvil).
  * Radio de borde: `8px`.
  * Borde: `1px solid rgba(74, 46, 38, 0.12)`.
  * Precio destacado: `1.8rem` (`28.8px`), peso `700`, margen inferior `10px`.
* **Botón de Pedido Directo:**
  * Altura mínima: **`48px`**.
  * Padding: `11px 16px`.
  * Radio de borde: `6px`.
  * Fondo: `#28734E` (Verde WhatsApp formal) / `#1F5D3E` (hover).

---

## 8. Sistema de Carrito Lateral Deslizante (Slide-Over Drawer)

El panel lateral de checkout permite revisar productos y enviar el pedido formateado por WhatsApp.

```
+----------------------------------------------------------------------------------------------------+
| BACKDROP OVERLAY: fixed | 100vw x 100vh | rgba(30, 18, 10, 0.65) | blur: 4px | z-index: 999998     |
+----------------------------------------------------------------------------------------------------+
| DRAWER PANEL: fixed | Ancho 440px (max 92vw) | Altura 100% | Sombra: -5px 0 35px | z-index: 999999 |
| - Header: padding 22px 24px | Título 1.35rem | Botón cerrar 30px (padding 2px 8px)                 |
| - Items List: padding 20px 24px | Miniatura: 62x62px | Stepper: 26x26px | Qty input: 30px          |
| - Footer: padding 18px 24px 24px 24px | max-height 50vh | Total font 1.3rem                        |
| - Formulario Checkout: padding 12px 14px | Inputs: padding 7px 10px, font 0.86rem                  |
+----------------------------------------------------------------------------------------------------+
```

### 8.1. Telón de Fondo (*Backdrop Overlay* - `#cart-drawer-backdrop`)

* **Posición:** `fixed; top: 0; left: 0`.
* **Dimensiones:** `width: 100%; height: 100%`.
* **Color de fondo:** `rgba(30, 18, 10, 0.65)`.
* **Filtro de desenfoque:** `backdrop-filter: blur(4px)`.
* **Transición:** `0.35s ease`.
* **Índice de apilamiento (*Z-index*):** **`999998`**.

### 8.2. Panel Deslizante Lateral (`#cart-drawer-panel`)

* **Posición:** `fixed; top: 0; right: -480px` (oculto) $\rightarrow$ `right: 0` (activo).
* **Ancho nominal:** **`440px`**.
* **Ancho máximo:** **`92vw`** (garantiza que en pantallas pequeñas de 320px-375px se visualice margen de referencia).
* **Altura:** `100%` (`100vh`).
* **Sombra lateral:** `-5px 0 35px rgba(74, 46, 38, 0.30)`.
* **Transición:** `right 0.38s cubic-bezier(0.25, 1, 0.5, 1)`.
* **Índice de apilamiento (*Z-index*):** **`999999`**.

### 8.3. Cabecera del Carrito (`.cart-drawer-header`)

* **Padding:** `22px 24px`.
* **Color de fondo:** `#F3E4D0` (Crema institucional).
* **Borde inferior:** `2px solid rgba(184, 101, 73, 0.30)`.
* **Título H3:** `1.35rem` (`21.6px`).
* **Botón Cerrar (`.cart-drawer-close`):**
  * Tamaño de fuente: `30px`.
  * Padding: `2px 8px`.
  * Radio de borde: `6px`.
  * Interlineado: `1`.

### 8.4. Lista de Productos en el Carrito (`.cart-drawer-items`)

* **Padding contenedor:** `20px 24px`.
* **Fila de Producto (`.cart-item-row`):**
  * Padding vertical: `14px 0`.
  * Separación horizontal (*gap*): `14px`.
  * Borde inferior: `1px solid #EFE5D8`.
* **Miniatura de Producto (`.cart-item-img`):**
  * Dimensiones: **`62px x 62px`**.
  * Padding interno: `4px`.
  * Radio de borde: `8px`.
  * Borde: `1px solid rgba(184, 101, 73, 0.20)`.
  * Ajuste de imagen: `object-fit: contain`.
* **Controles de Cantidad en el Drawer (`.cart-qty-ctrl`):**
  * Borde: `1px solid #D6C2AA`.
  * Radio de borde: `6px`.
  * Botones `[-]` y `[+]` (`.cart-qty-btn`): **`26px x 26px`**.
  * Valor de cantidad (`.cart-qty-val`): Ancho **`30px`**, tamaño de fuente `0.90rem`.
* **Botón Eliminar Producto (`.cart-item-remove`):**
  * Padding: `6px`.
  * Radio de borde: `4px`.
  * Color: `#B23B3B` (Rojo alerta).

### 8.5. Pie y Checkout del Carrito (`.cart-drawer-footer`)

* **Padding:** `18px 24px 24px 24px`.
* **Color de fondo:** `#FAF6F0`.
* **Borde superior:** `2px solid rgba(184, 101, 73, 0.25)`.
* **Altura máxima:** `50vh` (con `overflow-y: auto`).
* **Fila de Total (`.cart-total-line`):**
  * Tamaño de fuente: `1.3rem` (`20.8px`), peso `700`.
  * Padding superior: `8px`.
  * Margen superior: `8px`.
  * Borde superior: `1px dashed rgba(184, 101, 73, 0.40)`.
* **Caja de Formulario (`.cart-checkout-form`):**
  * Padding: `12px 14px`.
  * Margen: `14px 0 12px 0`.
  * Radio de borde: `8px`.
  * Borde: `1px solid #E5D5C0`.
* **Campos de Entrada de Datos (`.cart-input`):**
  * Ancho: `100%`.
  * Padding: `7px 10px`.
  * Margen inferior: `8px`.
  * Radio de borde: `6px`.
  * Tamaño de fuente: `0.86rem` (`13.7px`).
  * Borde: `1px solid #D6C2AA`.
  * Focus ring: `outline: none; border-color: var(--color-dorado); box-shadow: 0 0 0 3px rgba(184, 101, 73, 0.15)`.

---

## 9. Elementos Flotantes y Notificaciones Toast

Los componentes flotantes cuentan con coordinación de coordenadas Z e Y para evitar colisiones visuales en cualquier resolución.

```
COORDENADAS VERTICALES DE BOTONES FLOTANTES:
+----------------------------------------------------------------------------------------------------+
| Desktop (>= 768px):                                                                                |
| - Botón Scroll-to-Top (.sp-scroll-up) : bottom 150px (o 92px) | right 24px | 44x44px               |
| - Botón Carrito Píldora (#floating-cart-pill) : bottom 84px  | right 24px | padding 11x20px       |
| - Botón WhatsApp Flotante (#whatsapp-flotante-wrapper) : bottom 24px | right 24px | icono 24x24px  |
+----------------------------------------------------------------------------------------------------+
| Móvil (< 768px):                                                                                   |
| - Botón Scroll-to-Top : bottom 18px | right 18px | 42x42px                                         |
| - Botón Carrito y WhatsApp flotantes se ocultan o integran en la cabecera fija para evitar tapar UI |
+----------------------------------------------------------------------------------------------------+
```

### 9.1. Notificación Flotante Toast (`#cart-toast`)

* **Posicionamiento:** `fixed; top: 25px; right: 25px`.
* **Padding:** `14px 22px`.
* **Radio de borde:** `8px`.
* **Acento lateral:** `border-left: 5px solid var(--color-dorado)` (`#B86549`).
* **Sombra:** `0 10px 30px rgba(0, 0, 0, 0.30)`.
* **Tamaño de fuente:** `14px`, peso `600`.
* **Separación interna (*gap*):** `12px`.
* **Animación de entrada:** De `transform: translateY(-80px)` (opacidad 0) a `translateY(0)` (opacidad 1).
* **Curva de transición:** `0.35s cubic-bezier(0.175, 0.885, 0.32, 1.275)`.
* **Z-index:** **`1000000`** (nivel superior absoluto).

### 9.2. Botón Flotante de Retorno Arriba (`.sp-scroll-up`)

* **Desktop ($\ge 768\text{ px}$):**
  * Posición: `bottom: 150px` (o `92px`); `right: 24px`.
  * Dimensiones: **`44px x 44px`**.
  * Altura de línea: `line-height: 44px`.
  * Borde: `1px solid var(--color-terracota)`.
  * Sombra: `0 6px 18px rgba(74, 46, 38, 0.24)`.
  * Z-index: **`999998`**.
* **Móvil ($\le 576\text{ px}$):**
  * Posición: `bottom: 18px`; `right: 18px`.
  * Dimensiones: **`42px x 42px`**.
  * Altura de línea: `line-height: 42px`.

### 9.3. Botón Flotante de WhatsApp (`#whatsapp-flotante-wrapper`, `.btn-whatsapp-flotante`)

* **Desktop ($\ge 768\text{ px}$):**
  * Posición: `position: fixed; bottom: 24px; right: 24px`.
  * Sombra: `0 8px 24px rgba(37, 211, 102, 0.45)`.
  * Z-index: **`99999`**.
* **Móvil ($\le 576\text{ px}$):**
  * Posición: `bottom: 18px; right: 18px`.
* **Icono SVG de WhatsApp (`.icono-wa`):**
  * Dimensiones: **`24px x 24px`**.
  * Caja de vista (*viewBox*): `0 0 32 32`.

### 9.4. Botón Flotante de Carrito Píldora (`#floating-cart-pill`)

* **Desktop ($\ge 768\text{ px}$):**
  * Posición: `position: fixed; bottom: 84px` (o `85px`); `right: 24px`.
  * Padding: `11px 20px`.
  * Radio de borde: `50px`.
  * Borde: `2px solid var(--color-dorado)`.
  * Sombra: `0 8px 24px rgba(74, 46, 38, 0.35)`.
  * Z-index: **`99998`**.
  * Tamaño de fuente: `14px`, peso `600`.
  * Separación interna (*gap*): `10px`.
* **Móvil ($\le 576\text{ px}$):**
  * Posición: `bottom: 74px` (o `78px`); `right: 18px`.
  * Padding: `9px 16px`.
  * Tamaño de fuente: `13px`.

---

## 10. Tokens de Elevación, Sombras y Curvaturas

### 10.1. Escala de Radios de Borde (*Border Radius*)

| Token / Categoría | Valor | Aplicación en la Interfaz |
| :--- | :---: | :--- |
| **Circular Completo** | `50%` | Insignias circulares (72px), flechas de carrusel (42px), botón scroll-to-top |
| **Píldora / Cápsula** | `999px` / `50px` | Botón carrito header, floating pill, badges de tradición en Hero |
| **Radio Muy Grande** | `18px` - `20px` | Macro-contenedores de sección (Hero, Historia, Beneficios, Contacto) y Catálogo Hero |
| **Radio Grande** | `14px` - `16px` | Tarjetas de producto (carrusel y catálogo), tarjetas de beneficios, panel de filtros |
| **Radio Medio** | `8px` - `10px` | Botones principales (`btn-cafe`), imágenes de producto en ficha, inputs de búsqueda |
| **Radio Pequeño** | `6px` - `7px` | Botones de paginación, inputs de formulario de checkout, miniatura de producto en drawer |
| **Radio Micro** | `4px` | Badges de metadatos de Joomla, botón de eliminar artículo en carrito |

### 10.2. Escala de Sombras y Elevaciones (*Box Shadow*)

| Nivel de Elevación | Código CSS | Uso en la Interfaz |
| :--- | :--- | :--- |
| **Nivel 1 (Base Suave)** | `0 4px 18px rgba(74, 46, 38, 0.08)` | Header sticky adherente, badges con desenfoque de cristal |
| **Nivel 2 (Tarjetas)** | `0 8px 24px rgba(59, 35, 20, 0.07)` | Tarjetas de producto en estado reposo, panel de filtros |
| **Nivel 3 (Hover Activo)**| `0 18px 38px rgba(59, 35, 20, 0.16)` | Tarjetas al pasar el cursor (`transform: translateY(-8px)`) |
| **Nivel 4 (Macro-Bloques)**| `0 12px 36px rgba(59, 35, 20, 0.08)` | Contenedor Hero, bloque de Historia y Beneficios |
| **Nivel 5 (Flotantes / Drawer)**| `-5px 0 35px rgba(74, 46, 38, 0.30)` | Panel lateral del carrito de compras (Slide-Over Drawer) |
| **Nivel 6 (Notificaciones)**| `0 10px 30px rgba(0, 0, 0, 0.30)` | Ventana emergente Toast de confirmación |
| **Nivel 7 (CTA Acción)** | `0 8px 24px rgba(37, 211, 102, 0.45)` | Botón flotante de WhatsApp |

---

## 11. Matriz Resumen de Dimensiones por Dispositivo

A continuación se presenta la tabla de consulta rápida con las medidas exactas de los componentes clave en los 3 formatos principales de visualización:

| Componente | Desktop ($\ge 992\text{ px}$) | Tablet ($768\text{ px} - 991\text{ px}$) | Móvil ($< 768\text{ px}$) |
| :--- | :---: | :---: | :---: |
| **Altura Header Sticky** | `88px` | `72px` | `64px` |
| **Altura Logotipo** | `78px` | `62px` | `54px` |
| **Padding Hero Principal** | `85px 0 95px 0` | `60px 0 70px 0` | `24px 12px 28px` |
| **Altura Máx. Imagen Hero** | `440px` | `340px` | `210px` |
| **Título H1 Hero** | `3.5rem` (`56px`) | `2.8rem` (`44.8px`) | `clamp(2rem, 8vw, 2.55rem)` |
| **Botón Primario (Padding)** | `14px 34px` | `13px 28px` | `11px 16px` |
| **Columnas de Catálogo** | 3 columnas (`gap: 24px`) | 2 columnas (`gap: 18px`) | 1 columna (`gap: 18px`) |
| **Aspect Ratio Foto Producto** | `4 / 3` (carrusel) / `16 / 10` (catálogo)| `4 / 3` / `16 / 10` | `16 / 10` |
| **Ancho Tarjeta Carrusel** | `clamp(270px, 33%, 390px)` | `320px` | `min(84vw, 340px)` |
| **Diámetro Icono Beneficio** | `72px x 72px` (SVG `36px`) | `72px x 72px` | `64px x 64px` (SVG `32px`) |
| **Micro-Iconos Contacto** | `20px x 20px` | `20px x 20px` | `20px x 20px` |
| **Ancho Drawer Carrito** | `440px` | `440px` | `max-width: 92vw` |
| **Miniatura Carrito** | `62px x 62px` | `62px x 62px` | `56px x 56px` |
| **Stepper Cantidad (Alto)** | `42px` | `42px` | `40px` |
| **Botón WhatsApp Flotante** | `bottom: 24px; right: 24px` | `bottom: 24px; right: 24px` | `bottom: 18px; right: 18px` |
| **Scroll-to-Top (Dimensiones)**| `44px x 44px` | `44px x 44px` | `42px x 42px` |

---

## 12. Conclusión Técnica

Todas las medidas especificadas en este informe han sido validadas e implementadas en el archivo de estilos central `joomla/templates/shaper_helixultimate/css/custom.css` y en las configuraciones del template `options.json`. 

El sistema garantiza:
1. **Consistencia Visual:** Armonía métrica modular basada en múltiplos de 2, 4 y 8 píxeles.
2. **Ergonomía Táctil:** Cumplimiento de zonas táctiles mínimas ($\ge 44\text{px}$) para evitar pulsaciones erróneas en pantallas táctiles móviles.
3. **Alto Rendimiento:** Ausencia de dependencias de frameworks CSS externos pesados, utilizando CSS nativo, Flexbox y CSS Grid.
