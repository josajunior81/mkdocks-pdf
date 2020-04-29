FROM alpine:3.11

RUN apk --update --upgrade --no-cache add git bash curl fontconfig ttf-dejavu python3 python3-dev musl-dev g++ make gcc jpeg-dev zlib-dev libffi libffi-dev cairo-dev pango-dev gdk-pixbuf-dev

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \   
  && python3 get-pip.py \
  && pip install font-roboto \
  && pip install mkdocs=1.0 \
  && pip install mkdocs-material \
  && pip install pygments \
  && pip install pymdown-extensions \
  && pip install markdown \
  && pip install mkdocs-pdf-export-plugin