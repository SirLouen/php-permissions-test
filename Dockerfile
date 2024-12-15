FROM php:8-fpm

COPY ./src/ /var/www/html/

# Add a user to run PHP-FPM
RUN groupadd -g 1000 phptest && useradd -u 1000 -g phptest phptest
RUN chown -R phptest:phptest /var/www/html
RUN usermod -a -G www-data phptest
RUN chown www-data:www-data /var/www/html/check_group.php 
RUN chown www-data:www-data /var/www/html/check_root.php 
RUN chown www-data:www-data /var/www/html/group_test_dir/
RUN chown www-data:www-data /var/www/html/root_test_dir/
RUN chmod 660 /var/www/html/check_group.php
RUN chmod 600 /var/www/html/check_root.php
RUN chmod 550 /var/www/html/group_test_dir/
RUN chmod 500 /var/www/html/root_test_dir/