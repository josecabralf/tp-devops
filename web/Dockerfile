# Usa la imagen oficial de Node.js como base para el frontend
FROM node:16 AS build
WORKDIR /web
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.27.1-alpine
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /web/build /usr/share/nginx/html
RUN touch /var/run/nginx.pid
RUN chown -R nginx:nginx /var/run/nginx.pid /usr/share/nginx/html /var/cache/nginx /var/log/nginx /etc/nginx/conf.d
USER nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
