#!/bin/bash
if [! -f /var/www/html/public/index.php]; then
	echo "No symfony project found, so now installing ... "
	composer create-project symfony/skeleton . || exit 1
	echo "Symfony installed successfully. "
else
	echo "Symfony project already exists, skipping installation"
fi

#apache
apache2-foreground