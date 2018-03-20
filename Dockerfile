FROM php:7-apache

RUN yes | pecl install xdebug

COPY docker-xdebug-* /usr/local/bin/

RUN echo "<?php phpinfo();" > /var/www/html/index.php

ENTRYPOINT [ "docker-xdebug-php-entrypoint" ]
CMD ["apache2-foreground"]
