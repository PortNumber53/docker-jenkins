#! /bin/bash -e

sed -i 's|;\(.*extension=bcmath*\)|\1|' /etc/php/php.ini
sed -i 's|;\(.*extension=bz2*\)|\1|' /etc/php/php.ini
sed -i 's|;\(.*extension=curl*\)|\1|' /etc/php/php.ini
sed -i 's|;\(.*extension=gd*\)|\1|' /etc/php/php.ini
sed -i 's|;\(.*extension=iconv*\)|\1|' /etc/php/php.ini
sed -i 's|;\(.*extension=xsl*\)|\1|' /etc/php/php.ini
sed -i 's|;\(.*extension=zip*\)|\1|' /etc/php/php.ini

sed -i 's|;\(.*zend_extension=xdebug.so*\)|\1|' /etc/php/conf.d/xdebug.ini
