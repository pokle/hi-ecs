FROM node:7
EXPOSE 8080
ADD . /app
WORKDIR /app
CMD ./node_modules/.bin/http-server static
