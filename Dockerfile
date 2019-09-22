FROM thoughtmachine/please_ubuntu

WORKDIR /.please/

ENV PLEASE_VERSION=14.1.3

RUN curl https://get.please.build/linux_amd64/${PLEASE_VERSION}/please_${PLEASE_VERSION}.tar.gz -o please.tar.gz

RUN tar -xvzf please.tar.gz

RUN mv please/please please/plz

ENV PATH="/.please/please:${PATH}"

RUN plz update

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]