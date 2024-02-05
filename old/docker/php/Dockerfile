FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
		libpng-dev \
		libonig-dev \
		libjpeg62-turbo-dev \
		libfreetype6-dev \
		libzip-dev \
		unzip \
		zip \
		git && \
	docker-php-ext-configure gd --with-freetype --with-jpeg && \
	docker-php-ext-install -j$(nproc) gd pdo_mysql mbstring zip && \
	rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
