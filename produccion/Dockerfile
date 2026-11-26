FROM php:8.3-apache

# Habilitar módulos de Apache necesarios para Joomla
RUN a2enmod rewrite headers expires

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

WORKDIR /var/www/html

COPY joomla/ /var/www/html/joomla/
COPY produccion/configuration.docker.php /var/www/html/joomla/configuration.php

RUN chown -R www-data:www-data \
    /var/www/html/joomla/administrator/logs \
    /var/www/html/joomla/administrator/cache \
    /var/www/html/joomla/cache \
    /var/www/html/joomla/images \
    /var/www/html/joomla/tmp
