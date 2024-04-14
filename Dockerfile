FROM node:alpine AS builder
ARG VERSION=1.0.0
ENV APP_VERSION=$VERSION
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY . .
EXPOSE 8084
CMD ["npm", "start"]

FROM nginx:alpine
#COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /usr/app/ /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1s \
   CMD curl -f http://localhost:8084/ || exit 1
CMD ["nginx", "-g", "daemon off;"]

