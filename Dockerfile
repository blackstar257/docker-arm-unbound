FROM armhf/alpine:latest
RUN apk update && apk add unbound
COPY unbound.conf /etc/unbound/unbound.conf
CMD ["unbound", "-d"]
