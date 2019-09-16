FROM thoughtmachine/please_ubuntu

WORKDIR /please/

RUN curl https://get.please.build/linux_amd64/14.1.3/please_14.1.3.tar.gz -o please.tar.gz

RUN tar -xvzf please.tar.gz

RUN mv please/please please/plz

ENV PATH="/please/please:${PATH}"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]