# Base image
FROM nginx:latest

# Set working directory inside the container
WORKDIR /usr/share/nginx/html 

# Remove default Nginx static files
COPY . .

# Expose HTTPS (port 443) 
EXPOSE 9000

# command to run and start nginx
# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]