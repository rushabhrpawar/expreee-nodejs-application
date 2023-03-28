FROM node:latest
COPY . . 
run  npm install express
run npm install -g express-generator@4
run express /tmp/foo && cd /tmp/foo
workdir /tmp/foo/
run npm install
expose 3000
entrypoint [ "npm", "start" ]
