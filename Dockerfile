FROM sebp/lighttpd

COPY index.html services.html diplome.html /var/www/localhost/htdocs/
COPY en /var/www/localhost/htdocs/en
COPY fr /var/www/localhost/htdocs/fr
COPY assets /var/www/localhost/htdocs/assets
COPY etc/lighttpd  /etc/lighttpd

EXPOSE 80
