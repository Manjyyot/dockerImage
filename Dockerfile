# Use the official Nginx image as the base image
FROM nginx:latest

# Copy the index.html file to the default Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Copy the custom nginx.conf file to the Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose only the necessary port for HTTP (port 80)
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
