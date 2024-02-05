# Escolha uma imagem base que inclua PHP
FROM php:8.3-fpm

# Instale quaisquer dependências necessárias para suas extensões do PHP
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    git \
    unzip \
    curl \
    && docker-php-ext-install zip

# Instale o Xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Copie o arquivo de configuração do Xdebug para o container, se você tiver um
COPY ./docker/xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# Instale o Composer globalmente
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Instale o Node.js (LTS) e o NPM
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash - \
    && apt-get install -y nodejs

# Instale o Prettier e o ESLint globalmente
RUN npm install --global prettier eslint

# Defina o diretório de trabalho (onde seu projeto vai estar localizado)
WORKDIR /var/www

# Exponha a porta que o PHP-FPM está ouvindo (altere se necessário)
EXPOSE 9000

# Inicie o PHP-FPM
CMD ["php-fpm"]
