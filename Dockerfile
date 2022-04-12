FROM kong:2.4

USER root
RUN apk update
RUN apk add nettle-dev
RUN apk add build-base
RUN apk add git

RUN git config --global url.https://github.com/.insteadOf git://github.com/
RUN luarocks install basexx
RUN luarocks install libdeflate
RUN luarocks install lua-resty-nettle 0.105-1
RUN luarocks install json-lua 0.1-3
RUN luarocks install lualogging 1.6.0-2

CMD ["kong", "docker-start"]
