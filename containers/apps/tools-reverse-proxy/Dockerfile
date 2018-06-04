# Pull base image.
FROM ubuntu-base

RUN \
  gpg --keyserver hkp://keyserver.ubuntu.com:80 \
      --recv-keys 8B3981E7A6852F782CC4951600A6F0A3C300EE8C && \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx

# Copy default webpage
RUN rm /var/www/html/index.nginx-debian.html && \
    rm /etc/nginx/sites-enabled/*
COPY html/index.html /var/www/html/index.html
COPY html/robots.txt /var/www/html/robots.txt

COPY config/nginx.conf /etc/nginx/nginx.conf
# The child image will copy over the default.conf


# Define mountable directories.
VOLUME ["/etc/nginx/certs", "/var/log/nginx", "/var/www/html"]

RUN apt-get update && apt-get install -y iputils-ping net-tools bind9-host
RUN chmod 4755 /bin/ping

ARG serverhost=localhost
ARG servercer=certs/cert.pem
ARG serverkey=certs/key.pem

COPY config/nginx-default.conf /tmp/default.conf.in
RUN sed -e '/server_name/ s/_;/'$serverhost';/' /tmp/default.conf.in \
        > /etc/nginx/conf.d/default.conf

COPY $servercer /etc/ssl/certs/server.cer
COPY $serverkey /etc/ssl/private/server.key

CMD nginx