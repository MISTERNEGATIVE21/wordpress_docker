
LABEL maintainer= " MisterNegative21 <misternegative21@gmail.com>"

# Use the official WordPress image as the base image
FROM wordpress:latest

# Copy your custom PHP configuration file to the container
COPY ./wordpress.ini /usr/local/etc/php/conf.d/wordpress.ini

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the custom theme (if you have one) to the themes directory
# COPY ./custom-theme /var/www/html/wp-content/themes/custom-theme

# Optional: Install additional PHP extensions or packages if needed
  RUN apt-get update && apt-get install -y nano

# Optional: Expose additional ports if needed
  EXPOSE 80
# Start the WordPress application
CMD ["apache2-foreground"]
