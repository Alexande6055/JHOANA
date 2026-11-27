FROM php:8.3-apache

# Habilitar módulos de Apache necesarios para Joomla y proxy a phpMyAdmin
RUN a2enmod rewrite headers expires proxy proxy_http

COPY produccion/apache-phpmyadmin.conf /etc/apache2/conf-available/phpmyadmin.conf
RUN a2enconf phpmyadmin

# Instalar extensiones PHP requeridas por Joomla 6
RUN apt-get update && apt-get install -y --no-install-recommends \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    libxml2-dev \
    libicu-dev \
    libwebp-dev \
    unzip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install -j$(nproc) \
        gd \
        mysqli \
        pdo_mysql \
        zip \
        intl \
        opcache \
        xml \
        exif \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Configuración de PHP para producción
RUN { \
    echo 'upload_max_filesize = 64M'; \
    echo 'post_max_size = 64M'; \
    echo 'max_execution_time = 300'; \
    echo 'memory_limit = 256M'; \
    echo 'output_buffering = Off'; \
} > /usr/local/etc/php/conf.d/joomla.ini

# Configurar Apache para permitir .htaccess
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

# Copiar Joomla con propietario www-data desde la capa de copia
COPY --chown=www-data:www-data joomla/ /var/www/html/joomla/
COPY --chown=www-data:www-data produccion/configuration.docker.php /var/www/html/joomla/configuration.php

# Garantizar carpetas escribibles y permisos estándar (755 carpetas / 644 archivos)
RUN install -d -o www-data -g www-data \
        /var/www/html/joomla/cache \
        /var/www/html/joomla/administrator/cache \
        /var/www/html/joomla/administrator/cache/language \
        /var/www/html/joomla/media/cache \
        /var/www/html/joomla/logs \
        /var/www/html/joomla/administrator/logs \
        /var/www/html/joomla/administrator/language/overrides \
        /var/www/html/joomla/images \
        /var/www/html/joomla/images/banners \
        /var/www/html/joomla/files \
        /var/www/html/joomla/templates/shaper_helixultimate/css \
        /var/www/html/joomla/tmp \
    && find /var/www/html/joomla -not -user www-data -exec chown www-data:www-data {} + \
    && find /var/www/html/joomla -not -group www-data -exec chgrp www-data {} + \
    && find /var/www/html/joomla -type d ! -perm 755 -exec chmod 755 {} + \
    && find /var/www/html/joomla -type f ! -perm 644 -exec chmod 644 {} +

WORKDIR /var/www/html

# Si algún volumen persistente se monta vacío como root, ajustar propietario antes de iniciar Apache
CMD ["sh", "-c", "dirs='/var/www/html/joomla/images /var/www/html/joomla/files /var/www/html/joomla/administrator/logs /var/www/html/joomla/media/cache /var/www/html/joomla/cache /var/www/html/joomla/administrator/cache /var/www/html/joomla/tmp'; install -d -o www-data -g www-data $dirs && find $dirs -not -user www-data -exec chown www-data:www-data {} + && find $dirs -not -group www-data -exec chgrp www-data {} + && exec apache2-foreground"]
