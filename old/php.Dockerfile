FROM php:8.3-fpm

# Instalar dependências
RUN apt-get update && apt-get install -y \
	libbz2-dev \
	libonig-dev \
	libxml2-dev \
	libpng-dev \
	libwebp-dev \
	libjpeg62-turbo-dev \
	libxpm-dev \
	libfreetype6-dev \
	libzip-dev \
	libpq-dev \
	&& docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
	&& docker-php-ext-install -j$(nproc) gd \
	&& docker-php-ext-install pdo_mysql bcmath bz2 calendar ctype curl dom fileinfo filter ftp hash iconv json mbstring mysqli opcache pcntl pcre pdo pdo_pgsql pdo_sqlite phar posix readline session simplexml soap sockets spl sqlite3 tokenizer xml xmlreader xmlwriter xsl zip \
	&& pecl install xdebug-3.1.4 \
	&& docker-php-ext-enable xdebug

# Configurar XDebug
RUN echo "xdebug.mode=debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
	&& echo "xdebug.start_with_request=yes" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
	&& echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
	&& echo "xdebug.client_port=9003" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
	&& echo "xdebug.log=/tmp/xdebug.log" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

WORKDIR /var/www/html

EXPOSE 9000
CMD ["php-fpm"]
