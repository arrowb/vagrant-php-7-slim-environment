#!/bin/bash

echo "======================================================="
echo "COMPOSER INSTALL"
curl -Ss https://getcomposer.org/installer | php > /dev/null
sudo mv composer.phar /usr/bin/composer
composer self-update
echo "======================================================="