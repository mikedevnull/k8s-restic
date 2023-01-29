FROM alpine:3.17.1
RUN apk add restic bash curl
COPY scripts/entrypoint /usr/local/bin/
RUN chmod 755 /usr/local/bin/entrypoint 

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]
