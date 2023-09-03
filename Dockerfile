# Use an official Nginx runtime as the base image
FROM nginx:alpine

# Copy the static website files to the Nginx web root directory
COPY ./portfolio /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
