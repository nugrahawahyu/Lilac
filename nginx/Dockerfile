FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./wait-for-it.sh /bin/wait-for-it
RUN ["chmod", "+x", "/bin/wait-for-it"]
ENV PATH="/bin:${PATH}"
