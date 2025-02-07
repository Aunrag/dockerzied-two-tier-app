FROM php:8.1-apache as builde
RUN docker-php-ext-install mysqli
WORKDIR /var/www/html
COPY . /var/www/html
EXPOSE 80
RUN chown -R www-data:www-data /var/www/html
CMD ["apache2-foreground"]

