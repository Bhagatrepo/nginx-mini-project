# Use official Nginx image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML to Nginx
COPY html/ /usr/share/nginx/html/

