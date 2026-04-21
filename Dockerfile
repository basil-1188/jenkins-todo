FROM php:8.2-apache

# Copy all project files into Apache folder
COPY . /var/www/html/

# Expose port 80
EXPOSE 80