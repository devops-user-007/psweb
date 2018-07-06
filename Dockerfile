# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM node:10.6.0-alpine

LABEL maintainer="suparnb@gmail.com"

RUN mkdir /psweb-app
WORKDIR /psweb-app

COPY package.json package.json

# Install node dependencies
RUN  npm install

# Copy app to /src
COPY . /psweb-app

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
