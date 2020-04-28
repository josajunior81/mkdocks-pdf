FROM ubuntu:18.04

RUN apt-get update && apt-get -y install unzip build-essential python3-dev python3-pip python3-setuptools python3-wheel python3-cffi libcairo2 \
    libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info

COPY Roboto.zip Roboto.zip

RUN  mkdir -p ~/.fonts \
  && mkdir -p ~/.fonts/Roboto \
  && unzip Roboto.zip -d ~/.fonts/Roboto \
  && fc-cache -fv 

RUN pip3 install font-roboto \
  && pip3 install mkdocs \
  && pip3 install mkdocs-material \
  && pip3 install pygments \
  && pip3 install pymdown-extensions \
  && pip3 install markdown \
  && pip3 install mkdocs-pdf-export-plugin \
  && export GIT_SSL_NO_VERIFY=true 
