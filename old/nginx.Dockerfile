FROM nginx:latest

# Copiar a configuração do Nginx (você precisará criar este arquivo)
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /var/www/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
