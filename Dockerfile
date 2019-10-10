FROM codercom/code-server:2.1583-vsc1.38.1

WORKDIR /home/coder
RUN sudo apt -y update && curl -fsSL https://get.docker.com | sudo sh
ADD https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz .
RUN sudo tar -C /usr/local -xzf go1.13.1.linux-amd64.tar.gz && \
    rm go1.13.1.linux-amd64.tar.gz
ENV PATH $PATH:/usr/local/go/bin