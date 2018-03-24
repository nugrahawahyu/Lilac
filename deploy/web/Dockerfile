FROM node

COPY / /app/

WORKDIR /app

RUN npm install --production --unsafe-perm || \
  ((if [ -f npm-debug.log ]; then \
      cat npm-debug.log; \
    fi) && false)

EXPOSE 3000

CMD /usr/local/bin/npm start
