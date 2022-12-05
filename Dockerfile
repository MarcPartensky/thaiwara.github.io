FROM python as builder

RUN apt install -y make
RUN pip install pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv update
RUN make all

FROM sebp/lighttpd

COPY --from=builder index.html services.html diplome.html /var/www/localhost/htdocs/
COPY --from=builder en /var/www/localhost/htdocs/en
COPY --from=builder fr /var/www/localhost/htdocs/fr
COPY assets /var/www/localhost/htdocs/assets
COPY etc/lighttpd  /etc/lighttpd

EXPOSE 80
