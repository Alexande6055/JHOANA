# Arquitectura Tecnológica, Herramientas y Plugins

**Proyecto:** Landing Page Comercial y Corporativa - Chocolate Artesanal de Ambato  
**Framework CMS:** Joomla! (versión 6.x / 5.x)  
**Template Framework:** Helix Ultimate Framework (JoomShaper)  
**Page Builder:** SP Page Builder Pro / Lite  
**Documento base:** *Tarea 4. 1er avance del proyecto final* (Constante, Masabanda, Tixi, Pullupaxi, Sailema)

---

## 1. Pila Tecnológica (Tech Stack)

| Capa | Tecnología / Herramienta | Versión Recomendada | Función Principal |
| :--- | :--- | :--- | :--- |
| **CMS** | Joomla! | 5.2.x / 6.0.x | Núcleo de gestión de contenidos, seguridad, taxonomías y SEO |
| **Plantilla** | Helix Ultimate | 2.1.x+ | Framework de diseño, header sticky, menú responsive, layout engine |
| **Maquetador** | SP Page Builder | 5.4.x+ | Constructor visual drag & drop para la landing page de alta conversión |
| **Servidor Web** | Apache / LiteSpeed | 2.4.x | Servidor HTTP con compresión Gzip/Brotli y reescritura de URLs |
| **Lenguaje** | PHP | 8.2 / 8.3 | Motor de ejecución del CMS |
| **Base de Datos** | MySQL / MariaDB | 8.0+ / 10.6+ | Almacenamiento relacional de artículos, usuarios y configuración |
| **Mensajería** | WhatsApp Cloud Click to Chat | API wa.me | Canal de conversión directa y pedidos rápidos |

---

## 2. Extensiones, Componentes y Plugins de Joomla

### 2.1. Componentes del Núcleo y Extensiones Clave
1. **`com_content` (Contenido de Joomla):**
   * Almacenamiento nativo de los productos como artículos individuales dentro de la categoría `Productos`.
   * Permite indexación semántica, campos personalizados (*Custom Fields*) para precio, gramaje y porcentaje de cacao, y carga ligera sin sobrecargar el CMS con suites pesadas de e-commerce cuando la venta es directa vía WhatsApp.
2. **`com_sppagebuilder` (SP Page Builder):**
   * Motor para construir la landing page en una sola página (*One-Page Landing*).
   * Provee addons optimizados: *Heading, Text Block, Feature Box (Iconos de Beneficios), Image, Row, Button, Pricing/Card Table*.
3. **`com_fields` (Campos Personalizados del Núcleo):**
   * Creación de campos extra para los artículos de productos:
     * `precio_producto` (Texto / Numérico) -> Ej: `$4.50`.
     * `presentacion_cacao` (Texto) -> Ej: `Tableta 70% Cacao`.
     * `origen_grano` (Texto) -> Ej: `Fino de Aroma - Ambato / Tungurahua`.
4. **`mod_custom` (Módulo HTML Personalizado):**
   * Inyección del botón flotante interactivo de WhatsApp sin necesidad de plugins de terceros sobrecargados de scripts.

---

### 2.2. Plugins Recomendados para Optimización y Desempeño
Para cumplir con los requerimientos de **carga rápida, optimización móvil y SEO**:

| Nombre del Plugin / Herramienta | Tipo | Objetivo en el Proyecto |
| :--- | :--- | :--- |
| **System - Helix Ultimate** | Sistema | Control del layout, tipografías Google Fonts locales, compresión CSS/JS |
| **System - Page Cache (Joomla Core)** | Sistema | Caché de página para entrega ultrarrápida a usuarios móviles |
| **System - WebP Convert / Image Optimizer** | Sistema / Media | Conversión automática y entrega de imágenes en formato WebP |
| **Content - Fields (Joomla Core)** | Contenido | Renderizado dinámico de campos personalizados de producto |
| **System - HTTP Headers (Joomla Core)** | Sistema | Configuración de cabeceras de seguridad (CSP, X-Frame-Options, HSTS) |

---

## 3. Estrategia de Carga y Rendimiento (Performance)

1. **Optimización de Recursos Estáticos:**
   * Habilitar la concatenación y minificación de CSS y JavaScript nativa en los ajustes de Helix Ultimate (*Advanced > SCSS/CSS Compression*).
   * Desactivar librerías no utilizadas (evitar FontAwesome pesado si solo se usan 3 iconos SVG en la sección de beneficios).
2. **Optimización de Imágenes:**
   * Dimensiones exactas para cada viewport (desktops y móviles).
   * Uso estricto de atributos `loading="lazy"` y `decoding="async"` en todas las imágenes por debajo del viewport inicial (*below-the-fold*).
   * Hero image optimizada con formato WebP con compresión de calidad 80-85% para mantener nitidez del vapor y la taza.
3. **Tipografías:**
   * Carga de tipografía mediante la opción *Local Google Fonts* de Helix Ultimate para cumplir con regulaciones de privacidad y evitar bloqueos por latencia de DNS externos.

