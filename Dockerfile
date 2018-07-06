# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM node:10.6.0-alpine

LABEL maintainer="suparnb@gmail.com"

# Copy app to /src
COPY . /psweb-app

WORKDIR /psweb-app

# Install node dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
