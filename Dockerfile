# Use a lightweight production-grade web server
FROM nginx:alpine

# Copy all static assets into the default Nginx public directory
COPY . /usr/share/nginx/html

# Document that the container listens on port 80
EXPOSE 80

# Start Nginx in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]
