FROM alpine:3.16.2
RUN apk add restic bash curl
COPY scripts/entrypoint /usr/local/bin/
RUN chmod 755 /usr/local/bin/entrypoint 

ENTRYPOINT [ "/usr/local/bin/entrypoint" ]