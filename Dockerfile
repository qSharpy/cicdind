FROM alpine:latest
RUN apk update && \
    apk add --no-cache \
        bash \
        curl \
        jq \
        docker-cli
COPY script.sh /usr/local/bin/script.sh
RUN chmod +x /usr/local/bin/script.sh
CMD ["/bin/sh"]
