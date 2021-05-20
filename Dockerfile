FROM ubuntu:latest 
RUN apt update -y
RUN apt install -y \
    git \
    curl \
    mercurial \
    make \
    binutils \
    bison \
    gcc \
    build-essential
# Install nvm (node version manager)
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash 
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]