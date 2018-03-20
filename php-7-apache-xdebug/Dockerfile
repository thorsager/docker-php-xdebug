FROM php:7-apache

ARG HTTPS_PROXY
ARG HTTP_PROXY
ARG NO_PROXY


RUN export http_proxy=$HTTP_PROXY https_proxy=$HTTPS_PROXY no_proxy=$NO_PROXY \
    && pear config-set http_proxy "$HTTP_PROXY" \
    && yes | pecl install xdebug

COPY docker-xdebug-* /usr/local/bin/

RUN echo "<?php phpinfo();" > /var/www/html/index.php

ENTRYPOINT [ "docker-xdebug-php-entrypoint" ]
CMD ["apache2-foreground"]

#RUN echo "xdebug.remote_enable = 1" >> ${XDEBUG_INI} \
#    && echo "xdebug.remote_host=docker.for.mac.localhost" >> ${XDEBUG_INI} \
#    && echo "xdebug.remote_port = 9000" >> ${XDEBUG_INI} \
#    && echo "xdebug.remote_handler = dbgp" >> ${XDEBUG_INI} \
#    && echo "xdebug.remote_mode = req" >> ${XDEBUG_INI} \
#    && echo "xdebug.profiler_enable=0" >> ${XDEBUG_INI} \
#    && echo "xdebug.profiler_enable_trigger=1" >> ${XDEBUG_INI} \
#    && echo "xdebug.remote_autostart=1" >> ${XDEBUG_INI} \
#    && echo "xdebug.idekey=PHPSTORM" >> ${XDEBUG_INI}
#    && echo "xdebug.remote_log=/tmp/xdebug.log" >> ${XDEBUG_INI}
