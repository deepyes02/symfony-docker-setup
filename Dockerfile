FROM php:8.2-apache
RUN a2enmod rewrite

##dependencies
RUN apt-get update && apt-get install -y \
	git \
	unzip \
	curl \
	&& rm -rf /var/lib/apt/lists/*

##install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html

RUN curl -sS https://get.symfony.com/cli/installer | bash \
    && mv /root/.symfony*/bin/symfony /usr/local/bin/symfony

# Copy entrypoint script
COPY ./scripts/install-symfony.sh /usr/local/bin/install-symfony.sh
RUN chmod +x /usr/local/bin/install-symfony.sh

# Entrypoint script to install Symfony on container start
ENTRYPOINT ["install-symfony.sh"]