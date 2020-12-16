FROM ubuntu 
RUN apt update -y
RUN apt install git -y
RUN git config --global credential.helper store
RUN apt install -y curl
RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
RUN bash n lts
COPY devpodEntrypoint.sh /devpodEntrypoint.sh
ENTRYPOINT [ "/devpodEntrypoint.sh" ]