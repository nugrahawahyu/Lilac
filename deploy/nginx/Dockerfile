FROM nginx:latest

COPY deploy/nginx/nginx.conf /etc/nginx/nginx.conf
COPY deploy/nginx//wait-for-it.sh /bin/wait-for-it
RUN ["chmod", "+x", "/bin/wait-for-it"]
ENV PATH="/bin:${PATH}"
