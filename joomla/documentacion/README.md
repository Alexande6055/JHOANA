# Documentación del Proyecto: Landing Page "Chocolate Artesanal de Ambato"

**Plataforma:** Joomla! 6 (o 5.x) + Helix Ultimate Framework + SP Page Builder  
**Proyecto Académico / Profesional:** Basado en los lineamientos de *Tarea 4. 1er avance del proyecto final* (Constante, Masabanda, Tixi, Pullupaxi, Sailema).  
**Concepto:** Inspirado en la tradición chocolatera de Ambato, con identidad visual, textos, catálogo y diseño 100% originales (sin plagio de textos ni logos de la web previa).

---

## 1. Resumen Ejecutivo y Estructura de la Documentación

Esta carpeta contiene la arquitectura completa, guías técnicas, hojas de estilo y especificaciones para desplegar la landing page en Joomla. Cada archivo `.md` aborda un componente específico:

| Archivo | Contenido Principal |
| :--- | :--- |
| **[01_ARQUITECTURA_TECNOLOGICA_Y_PLUGINS.md](file:///opt/lampp/htdocs/joomla/documentacion/01_ARQUITECTURA_TECNOLOGICA_Y_PLUGINS.md)** | Stack tecnológico, componentes core (`com_content`, `com_fields`), extensiones recomendadas, plugins de rendimiento y compresión. |
| **[02_ESTRUCTURA_LANDING_PAGE_SPPAGEBUILDER.md](file:///opt/lampp/htdocs/joomla/documentacion/02_ESTRUCTURA_LANDING_PAGE_SPPAGEBUILDER.md)** | Maquetación visual detallada sección por sección: Hero, Productos (3 tarjetas), Historia (2 columnas), Beneficios (3 iconos) y Contacto. |
| **[03_SISTEMA_DE_DISENO_Y_ESTILOS.md](file:///opt/lampp/htdocs/joomla/documentacion/03_SISTEMA_DE_DISENO_Y_ESTILOS.md)** | Tokens de color (#3B2314, #F5EBDD, #C19A3D), tipografías (Serif elegante + Sans-serif legible), código CSS listo para Helix Ultimate y diseño Mobile-First. |
| **[04_CATALOGO_PRODUCTOS_COM_CONTENT.md](file:///opt/lampp/htdocs/joomla/documentacion/04_CATALOGO_PRODUCTOS_COM_CONTENT.md)** | Estructura de artículos nativos de Joomla, fichas técnicas, precios, redacción comercial original y enlace a pedidos directos. |
| **[05_MODULOS_E_INTEGRACION_WHATSAPP.md](file:///opt/lampp/htdocs/joomla/documentacion/05_MODULOS_E_INTEGRACION_WHATSAPP.md)** | Código HTML/CSS para el botón flotante de WhatsApp en `mod_custom`, prellenado de pedidos por chat y configuración del menú superior One-Page. |
| **[06_ESTADO_DEL_DESARROLLO_Y_ACTUALIZACION.md](file:///opt/lampp/htdocs/joomla/documentacion/06_ESTADO_DEL_DESARROLLO_Y_ACTUALIZACION.md)** | Estado y bitácora técnica de la actualización completa del sistema web, plantillas, catálogo y SP Page Builder. |
| **[07_CARRITO_DE_COMPRAS_Y_CHECKOUT.md](file:///opt/lampp/htdocs/joomla/documentacion/07_CARRITO_DE_COMPRAS_Y_CHECKOUT.md)** | Especificación técnica y guía de usuario del Carrito de Compras, Drawer lateral, LocalStorage y Checkout WhatsApp. |
| **[08_MEDIDAS_Y_ESPECIFICACIONES_DE_INTERFAZ.md](file:///opt/lampp/htdocs/joomla/documentacion/08_MEDIDAS_Y_ESPECIFICACIONES_DE_INTERFAZ.md)** | Informe técnico exhaustivo con todas las medidas en px, rem y %, espaciados, tipografías, botones, componentes y breakpoints. |

---

## 2. Cumplimiento de las Reglas del Proyecto (PDF Avance 1)

El diseño y contenido respetan rigurosamente las definiciones estratégicas del documento base:

1. **Definición de Audiencia:**
   * **Público Primario (20-34 años):** Profesionales jóvenes y estudiantes independientes. Se prioriza la compra directa y rápida por WhatsApp en versión móvil, resaltando la pureza del cacao y el comercio justo.
   * **Público Secundario (35-50+ años):** Consumidores tradicionales y familias que valoran la historia desde 1952, la nostalgia del chocolate de taza y los métodos artesanales en paila.
2. **Segmentación Geográfica:**
   * Ecuador con epicentro en Ambato (Tungurahua) y cobertura nacional (Quito, Guayaquil, Cuenca).
3. **Estructura de Contenido:**
   * Cumple con los bloques definidos en el manual: *Banner Principal*, *Sección Tradición a la Vista*, *Productos Destacados*, *Historia de la Marca*, *Beneficios / Valores* y *Llamados a la Acción*.

---

## 3. Resumen de Secciones de la Landing Page

```
+--------------------------------------------------------------------------+
|  HEADER STICKY: Logo  |  Inicio  |  Productos  |  Historia  |  Contacto  |
+--------------------------------------------------------------------------+
|  HERO (#inicio)                                                          |
|  - Fondo: Crema #F5EBDD                                                  |
|  - H1: "Chocolate Artesanal de Ambato" (#3B2314, Serif)                  |
|  - Subtítulo: "Desde 1952, hecho con cacao ecuatoriano..."              |
|  - Botones: [Ver productos] (Café) | [Nuestra historia] (Borde dorado)   |
|  - Imagen derecha: Taza humeante de chocolate caliente artesanal         |
+--------------------------------------------------------------------------+
|  PRODUCTOS (#productos)                                                  |
|  - Fila con 3 tarjetas:                                                  |
|    1. Tableta 70% Cacao       - $4.50 - [Agregar] (Dorado #C19A3D)       |
|    2. Naranja & Jengibre      - $5.00 - [Agregar] (Dorado #C19A3D)       |
|    3. Cacao en Grano          - $6.00 - [Agregar] (Dorado #C19A3D)       |
+--------------------------------------------------------------------------+
|  HISTORIA (#historia)                                                    |
|  - 2 Columnas:                                                           |
|    * Izquierda: Foto de producción artesanal en paila de cobre           |
|    * Derecha: "Desde 1952 en el corazón de Ambato" + Párrafo + [Conoce +]|
+--------------------------------------------------------------------------+
|  BENEFICIOS                                                              |
|  - 3 Columnas con Iconos dorados:                                        |
|    [ 100% Artesanal ]   |   [ Beneficios Naturales ]   | [ Comercio Justo]
+--------------------------------------------------------------------------+
|  FOOTER & CONTACTO (#contacto)                                           |
|  - Fondo café oscuro #3B2314                                             |
|  - Datos de contacto, ubicación en Ambato, horarios y redes sociales     |
+--------------------------------------------------------------------------+
|  BOTÓN FLOTANTE: [ WhatsApp: "Pedir por WhatsApp" ] (#25D366)            |
+--------------------------------------------------------------------------+
```

