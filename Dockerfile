# docker image base on caddy image
FROM caddy:alpine

# workdir
WORKDIR /usr/share/caddy

# copy all file into workdir
COPY . .

# expose port
EXPOSE 80

# run caddy
RUN ["caddy", "run", "-config", "Caddyfile", "--adapter", "caddyfile"]

