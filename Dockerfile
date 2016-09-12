FROM node:6.5.0-slim
MAINTAINER engineering@weedrater.com
WORKDIR /app/auth
COPY ./package.json /app/auth/package.json
RUN npm install --production
ADD . /app/auth
ENTRYPOINT ["node", "index.js"]