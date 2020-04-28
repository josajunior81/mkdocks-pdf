FROM ubuntu:18.04

RUN apt-get update && apt-get -y install git curl bash unzip ttf-mscorefonts-installer build-essential python3-dev python3-pip python3-setuptools python3-wheel python3-cffi libcairo2 \
    libpango-1.0-0 libpangocairo-1.0-0 libgdk-pixbuf2.0-0 libffi-dev shared-mime-info

COPY Roboto.zip Roboto.zip

RUN unzip Roboto.zip -d /usr/share/fonts\
  && fc-cache -fv 

RUN export LC_ALL=C.UTF-8 \
  && export LANG=C.UTF-8 \
  && pip3 uninstall --yes cairocffi \
  && pip3 install cairocffi==1.0.1 \
  && pip3 install font-roboto \
  && pip3 install mkdocs \
  && pip3 install mkdocs-material \
  && pip3 install pygments \
  && pip3 install pymdown-extensions \
  && pip3 install markdown \
  && pip3 install mkdocs-pdf-export-plugin

