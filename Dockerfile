FROM container4armhf/armhf-alpine
RUN apk add unbound
COPY unbound.conf /etc/unbound/unbound.conf.d/unbound.conf
CMD ["unbound", "-d"]
