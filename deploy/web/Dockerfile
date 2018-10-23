FROM node:9.10.0

COPY / /app/

WORKDIR /app

RUN npm install --production --unsafe-perm || \
  ((if [ -f npm-debug.log ]; then \
      cat npm-debug.log; \
    fi) && false)

EXPOSE 8080

CMD /usr/local/bin/npm start
