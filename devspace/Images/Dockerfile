FROM ubuntu

# Installing necessary tools
RUN apt-get update && \
    apt-get install -y openssh-server

COPY ./welcome.sh /files/

ENTRYPOINT [ "bash", "/files/welcome.sh" ]