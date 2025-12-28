# Imagen base
FROM nginx:alpine

# Copiar configuración personalizada (PID corregido)
COPY nginx.conf /etc/nginx/nginx.conf

# Copiar archivos estáticos (HTML, CSS, JS)
COPY . /usr/share/nginx/html

# Configurar permisos para usuario no-root
RUN sed -i 's|listen       80;|listen       8080;|' /etc/nginx/conf.d/default.conf && \
    # Ajustar permisos para el usuario 'nginx'
    chown -R nginx:nginx /usr/share/nginx/html && \
    chmod -R 755 /usr/share/nginx/html && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    touch /tmp/nginx.pid && \
    chown -R nginx:nginx /tmp/nginx.pid

# Cambiar al usuario sin privilegios
USER nginx

# Exponer puerto no estándar
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
