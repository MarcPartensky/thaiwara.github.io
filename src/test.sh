#!/bin/sh

proto=${PROTO:-http}
host=${ADDR:-localhost}
port=${PORT:-8000}

fail=0

testendpoint(){
    curl -fso /dev/null -w "%{http_code}" $proto://$host:$port$slug || fail=1
}

for slug in / /index.html /diplome.html /services.html /fr/ /fr/diplome.html /fr/services.html /en/ /en/degree.html /en/services.html
do
    testendpoint
    echo "$status $proto://$host:$port$slug"
done

exit $fail
