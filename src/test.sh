#!/bin/sh

proto=${PROTO:-http}
host=${ADDR:-localhost}
port=${PORT:-8000}

fail=0

testendpoint(){
    curl -fso /dev/null -w "%{http_code}" $proto://$host:$port$slug || fail=1
}

for slug in / /index /diplome.html /services.html
do
    testendpoint
    echo "$status $proto://$host:$port$slug"
done

for lang in /fr /en
do
    for slug in / /index /diplome.html /services.html
    do
        testendpoint
        echo "$status $proto://$host:$port$lang$slug"
    done
done

exit $fail
