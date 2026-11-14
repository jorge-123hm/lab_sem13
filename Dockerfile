# Imagen base liviana de Node.js 
FROM node:18-alpine AS builder 
WORKDIR /app 

# Copiar manifiestos e instalar dependencias de producción 
COPY package*.json ./ 
RUN npm ci 

# Copiar el código fuente y construir el artefacto de producción 
COPY . . 
RUN npm run build 

# Etapa final de producción (Servidor NGINX) 
FROM nginx:alpine 
COPY --from=builder /app/dist /usr/share/nginx/html 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]