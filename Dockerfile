FROM shadowsocks/shadowsocks-libev

USER root
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update
RUN apk --update add privoxy
COPY privoxy/config /etc/privoxy/config
COPY shadowsocks.json /etc/

EXPOSE 8118

CMD privoxy /etc/privoxy/config && ss-local -c /etc/shadowsocks.json
