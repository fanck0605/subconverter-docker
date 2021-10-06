FROM nginx:stable

ARG SERVER_NAME=_

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN sed -i 's/__SERVER_NAME__/'"${SERVER_NAME}"'/' /etc/nginx/conf.d/default.conf
