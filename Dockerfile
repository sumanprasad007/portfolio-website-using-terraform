# Use an official Apache runtime as the base image
FROM httpd:2.4

# Copy your static website files into the container
COPY ./Portfolio-Website-Complete-CI-CD-pipeline  /usr/local/apache2/htdocs/

# Expose port 80 (the default HTTP port)
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]
