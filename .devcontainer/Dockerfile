FROM ubuntu:18.04

COPY . .

ENV PATH "$PATH:/usr/local/go/bin:/home/user/go/bin"
RUN bash setup.sh
USER user
