# docker-honeyproxy

## Usage

    docker build -t honeyproxy .
    cd <somedir>
    mkdir honeyproxy
    mkdir honeyproxy/conf
    mkdir honeyproxy/dump
    echo 'super secret password' > honeyproxy/conf/authkey
    docker run -v $(pwd)/honeyproxy/conf/:/conf -v $(pwd)/honeyproxy/dump/:/dump  -p 8080:8080 -p 8081:8081 -p 8082:8082 honeyproxy
