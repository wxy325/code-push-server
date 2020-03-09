From node:13.10
Label maintainer="wxy325 <wxy325@me.com>"

WORKDIR /usr/bin/codepush
COPY config ./config
COPY core ./core
COPY models ./models
COPY public ./public
COPY routes ./routes
COPY sql ./sql
COPY views ./views
COPY bin ./bin
COPY app.js package.json ./
RUN npm config set registry https://registry.npm.taobao.org/ \
&& npm install

ENTRYPOINT [ "node", "bin/www"]