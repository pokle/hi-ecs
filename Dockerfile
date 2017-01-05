FROM node:7
EXPOSE 3000
ADD . /app
WORKDIR /app
CMD ./node_modules/.bin/http-server static
