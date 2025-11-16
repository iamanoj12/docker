# Use lightweight nginx image to serve static files
FROM nginx:alpine

# Remove default nginx content (optional)
RUN rm -rf /usr/share/nginx/html/*

# Copy site files into nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]