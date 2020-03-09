FROM microsoft/mssql-server-linux:2017-latest

COPY . /usr/src/docker

WORKDIR /usr/src/docker

RUN chmod +x ./db-init.sh

CMD /bin/bash ./entrypoint.sh