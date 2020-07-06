FROM node:12.18.2-stretch

LABEL MAINTAINER = 'melthaw@gmail.com(https://github.com/melthaw/yapi-docker)'

ARG YAPI_VERSION

RUN mkdir /yapi && cd /yapi && wget https://github.com/YMFE/yapi/archive/v${YAPI_VERSION}.zip && \
    unzip v${YAPI_VERSION}.zip && mv yapi-${YAPI_VERSION} vendors && rm v${YAPI_VERSION}.zip
RUN npm i -g node-gyp yapi-cli npm@latest && cd /yapi/vendors && npm i --production;

WORKDIR /yapi/vendors

COPY config.json /yapi/
COPY entrypoint.sh /usr/local/bin/
COPY .vimrc /root/

EXPOSE 3000

ENTRYPOINT ["entrypoint.sh"]