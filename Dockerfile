FROM sebp/lighttpd

COPY index.html services.html diplome.html portfolio-details.html /var/www/localhost/htdocs/
COPY assets /var/www/localhost/htdocs/assets
COPY etc/lighttpd  /etc/lighttpd

EXPOSE 80
