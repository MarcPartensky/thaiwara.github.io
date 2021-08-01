FROM sebp/lighttpd

COPY . /var/www/localhost/htdocs
RUN mv /var/www/localhost/htdocs/lighttpd.conf /etc/lighttpd/lighttpd.conf

EXPOSE 80
