FROM php:8.2-apache
RUN a2enmod rewrite

#entrypoint
COPY ./scripts/install-symfony.sh /install-symfony.sh
RUN chmod +x /install-symfony.sh

##dependencies
RUN apt-get update && apt-get install -y \
	git \
	unzip \
	curl \
	&& rm -rf /var/lib/apt/lists/*

# ##install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

## install symfony cli
RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

RUN mkdir -p /var/www/html && chmod -R 777 /var/www/html
WORKDIR /tmp
RUN symfony new public --no-git

WORKDIR /var/www/html