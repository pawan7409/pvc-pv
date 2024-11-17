# Start with the official NGINX base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy static website content to the container (replace './html' with your local folder path)
COPY . . 

# Copy custom NGINX configuration if needed (uncomment if required)
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose the default NGINX port
EXPOSE 80

# Start the NGINX server
CMD ["nginx", "-g", "daemon off;"]
