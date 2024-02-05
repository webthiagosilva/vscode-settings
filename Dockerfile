# Base image
FROM php:8.3-fpm

# Set working directory
WORKDIR /workspace

# Install system dependencies
RUN apt-get update && apt-get install -y \
	git \
	curl \
	libpng-dev \
	libonig-dev \
	libxml2-dev \
	zip \
	unzip

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Add Xdebug configuration (adjust as needed)
#COPY xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs

# Install Python
RUN apt-get install -y python3 python3-pip

# Install npm packages
RUN npm install -g npm@latest yarn

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Expose port 9000 for PHP-FPM (adjust if different)
EXPOSE 9000 3000

# Set a default command to run when starting the container
CMD ["php-fpm"]
