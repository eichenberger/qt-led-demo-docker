FROM alpine:3.10.3

RUN apk --update add python3

COPY data /webassembly
COPY entrypoint.sh /

RUN chmod 777 entrypoint.sh

EXPOSE 8000 8000
ENTRYPOINT /entrypoint.sh
