# Módulo Custom HTML para Botón Flotante de WhatsApp y Configuración del Menú

Este documento detalla la implementación técnica del **Botón Flotante de WhatsApp** mediante un módulo nativo `mod_custom` y la configuración del **Menú Superior One-Page** en Helix Ultimate.

---

## 1. Módulo Custom HTML: Botón Flotante de WhatsApp

Para evitar plugins pesados de terceros y asegurar una carga instantánea en móviles, se utiliza el módulo nativo de Joomla **Custom HTML (`mod_custom`)**.

### 1.1. Paso a Paso en el Administrador de Joomla
1. Ir a **Contenido > Módulos del Sitio (Site Modules)**.
2. Hacer clic en **Nuevo (New)** y seleccionar **HTML Personalizado (Custom)**.
3. Configurar los parámetros generales:
   * **Título:** `Botón Flotante WhatsApp Pedidos`
   * **Mostrar título:** `Ocultar (Hide)`
   * **Posición:** `debug` (o `footer`), asegurando que se cargue en todas las páginas.
   * **Asignación de menú:** `En todas las páginas` (o solo en `Inicio`).
   * **Editor:** Cambiar a modo código fuente (o desactivar el editor WYSIWYG momentáneamente para evitar que limpie etiquetas).

### 1.2. Código HTML y CSS Integrado para el Módulo

Pegar el siguiente bloque directamente en el módulo:

```html
<!-- CONTENEDOR FLOTANTE DE WHATSAPP -->
<div id="whatsapp-flotante-wrapper">
  <a 
    href="https://wa.me/593962660236?text=Hola,%20vengo%20desde%20su%20página%20web%20y%20deseo%20hacer%20un%20pedido%20de%20chocolate%20artesanal." 
    class="btn-whatsapp-flotante" 
    target="_blank" 
    rel="noopener noreferrer"
    aria-label="Pedir por WhatsApp"
  >
    <!-- Icono oficial de WhatsApp en formato SVG ultra ligero -->
    <svg class="icono-wa" viewBox="0 0 32 32" width="26" height="26" fill="currentColor">
      <path d="M16.002 0C7.165 0 0 7.165 0 16.002c0 2.825.738 5.578 2.138 7.998L.069 31.854l8.037-2.108a15.93 15.93 0 007.896 2.083h.007c8.834 0 15.998-7.165 15.998-16.002C32.007 7.165 24.843 0 16.002 0zm0 29.136h-.006a13.2 13.2 0 01-6.726-1.844l-.482-.286-4.992 1.309 1.332-4.866-.314-.5a13.167 13.167 0 01-2.02-7.047c0-7.29 5.932-13.222 13.227-13.222 3.532 0 6.852 1.376 9.35 3.874a13.155 13.155 0 013.868 9.35c0 7.292-5.932 13.232-13.227 13.232zm7.254-9.9c-.397-.2-2.35-1.16-2.715-1.293-.365-.133-.63-.2-.896.2-.266.398-1.03 1.293-1.262 1.558-.232.266-.465.3-.863.1-.397-.2-1.678-.618-3.197-1.972-1.182-1.054-1.98-2.356-2.212-2.754-.233-.398-.025-.613.174-.811.179-.179.398-.465.597-.697.199-.233.266-.398.398-.664.133-.266.066-.498-.033-.697-.1-.199-.896-2.158-1.229-2.955-.323-.777-.652-.671-.896-.684l-.763-.013c-.266 0-.697.1-1.062.498-.365.398-1.394 1.361-1.394 3.32 0 1.959 1.427 3.852 1.626 4.118.2.266 2.809 4.288 6.804 6.013.951.411 1.693.656 2.271.84.954.303 1.823.26 2.51.157.766-.115 2.35-0.96 2.682-1.887.332-.927.332-1.721.232-1.887-.1-.166-.365-.266-.763-.465z"/>
    </svg>
    <span class="texto-wa">Pedir por WhatsApp</span>
  </a>
</div>

<style>
/* Estilos exclusivos del botón flotante */
#whatsapp-flotante-wrapper {
  position: fixed;
  bottom: 24px;
  right: 24px;
  z-index: 99999;
}

.btn-whatsapp-flotante {
  display: flex;
  align-items: center;
  gap: 10px;
  background-color: #25D366;
  color: #FFFFFF !important;
  text-decoration: none !important;
  padding: 12px 22px;
  border-radius: 50px;
  font-family: 'Montserrat', -apple-system, sans-serif;
  font-size: 15px;
  font-weight: 600;
  box-shadow: 0 8px 24px rgba(37, 211, 102, 0.4);
  transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}

.btn-whatsapp-flotante:hover {
  background-color: #20BA5A;
  color: #FFFFFF !important;
  transform: translateY(-4px) scale(1.03);
  box-shadow: 0 12px 30px rgba(37, 211, 102, 0.55);
}

.icono-wa {
  flex-shrink: 0;
}

/* Animación sutil de pulso para captar atención */
@keyframes pulso-wa {
  0% { box-shadow: 0 0 0 0 rgba(37, 211, 102, 0.7); }
  70% { box-shadow: 0 0 0 14px rgba(37, 211, 102, 0); }
  100% { box-shadow: 0 0 0 0 rgba(37, 211, 102, 0); }
}

.btn-whatsapp-flotante {
  animation: pulso-wa 2.5s infinite;
}

/* Adaptación para pantallas móviles */
@media (max-width: 576px) {
  #whatsapp-flotante-wrapper {
    bottom: 18px;
    right: 18px;
  }
  .btn-whatsapp-flotante {
    padding: 10px 18px;
    font-size: 14px;
  }
}
</style>
```

---

## 2. Configuración del Menú Superior en Helix Ultimate

Para cumplir con el requerimiento de navegación directa y limpia, el menú principal debe tener **exactamente 4 elementos de tipo enlace de ancla (URL One-Page)**:

### 2.1. Estructura de Elementos de Menú

| Orden | Título del Menú | Tipo de Elemento de Menú | Enlace (Link) | Parámetros Clave |
| :---: | :--- | :--- | :--- | :--- |
| **1** | `Inicio` | URL del Sistema / Página Principal | `#inicio` | Elemento predeterminado (Home) |
| **2** | `Productos` | URL Externa (URL) | `#productos` | Target: Same Window |
| **3** | `Historia` | URL Externa (URL) | `#historia` | Target: Same Window |
| **4** | `Contacto` | URL Externa (URL) | `#contacto` | Target: Same Window |

### 2.2. Configuración en el Administrador de Joomla
1. Ir a **Menús > Menú Principal (Main Menu)**.
2. Despublicar o eliminar cualquier elemento innecesario (como "Blog", "Login", etc.).
3. Crear los 4 ítems anteriores indicando en el campo **Enlace** el ID con almohadilla (`#`).
4. En **Helix Ultimate > Menú**:
   * Asegurarse de que el menú asignado al header sea **Main Menu**.
   * Activar la opción **Sticky Header** para que el menú permanezca visible mientras el usuario navega por la landing.
   * El script interno de Helix Ultimate gestionará el scroll suave (*Smooth Scroll*) y el resaltado activo (*ScrollSpy*) a medida que el usuario baje por las secciones.

