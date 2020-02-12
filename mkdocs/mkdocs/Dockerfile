FROM alpine:edge

RUN apk add py3-pip --no-cache
RUN pip3 install --upgrade pip ;\
    pip3 install mkdocs mkdocs-windmill-dark

EXPOSE 8000
COPY init.sh .
ENTRYPOINT [ "/bin/ash", "./init.sh" ]
