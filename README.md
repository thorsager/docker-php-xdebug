# Docker-php-xdebug
This image is build on the `php:7-apache`, and adds xdebug support
that can be configured at runtime, using environment variables.

All environment variables prefixed with `XDEBUG_` will be added to
the `xdebug.ini` file which will the be included in the php-config
befor every startup.

If no variables are found in environment, xdebug is disabled and
not even loaded.

## Exampel:
```bash
docker run -p 8080:80 \
	-e XDEBUG_remote_host=docker.for.mac.localhost
	-e XDEBUG_remote_port=9000
	-e XDEBUG_remote_handler=dbgp
	-e XDEBUG_remote_mode=req
	-e XDEBUG_idekey=MY_IDEA
	-e XDEBUG_remote_enable=1
	-e XDEBUG_remote_autostart=1
```
