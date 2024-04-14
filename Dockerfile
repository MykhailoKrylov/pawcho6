FROM node:alpine AS builder
ARG VERSION=1.0.0
ENV APP_VERSION=$VERSION
WORKDIR /usr/app
RUN apk add --no-cache git openssh
COPY id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa && \
   ssh-keyscan github.com >> /root/.ssh/known_hosts
RUN git clone git@github.com:mykhailokrylov/lab5.2.git .
RUN npm install
COPY . .
EXPOSE 8084
CMD ["npm", "start"]

FROM nginx:alpine
COPY --from=builder /usr/app /usr/share/nginx/html
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=1s \
   CMD curl -f http://localhost:8084/ || exit 1
CMD ["nginx", "-g", "daemon off;"]

