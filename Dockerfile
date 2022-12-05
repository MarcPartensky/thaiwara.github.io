FROM python as builder

RUN apt install -y make
RUN pip install pipenv

COPY Pipfile Pipfile.lock ./
RUN pipenv install --deploy

COPY templates templates
COPY content content
COPY src src
COPY Makefile .
RUN pipenv run make all

FROM sebp/lighttpd

COPY --from=builder index.html services.html diplome.html /var/www/localhost/htdocs/
COPY --from=builder en /var/www/localhost/htdocs/en
COPY --from=builder fr /var/www/localhost/htdocs/fr
COPY src/test.sh /root/test.sh
COPY assets /var/www/localhost/htdocs/assets
COPY etc/lighttpd  /etc/lighttpd

ENV PROTO=http ADDR=localhost PORT=80
HEALTHCHECK CMD /root/test.sh

EXPOSE 80
