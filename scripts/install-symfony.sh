#!/bin/bash
if [ -z "$(ls -A /var/www/html)"]; then
	echo "copying symfony files to /var/www/html"
	cp -R /tmp/public/* /var/www/html/
	chown -R www-data:www-data /var/www/html/
	echo "done"
else
	echo "Symfony project already exists, skipping copying"
fi

#apache
apache2-foreground