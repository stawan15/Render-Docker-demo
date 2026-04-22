# ---------- build stage ----------
FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy our custom nginx config
COPY nginx.conf /etc/nginx/conf.d/app.conf

# Copy static files
COPY index.html /usr/share/nginx/html/index.html

# Render routes external traffic to port 10000
EXPOSE 10000

CMD ["nginx", "-g", "daemon off;"]
