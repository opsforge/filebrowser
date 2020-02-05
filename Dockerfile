FROM filebrowser/filebrowser:latest

MAINTAINER opsforge.io
LABEL name="filebrowser"
LABEL version="1.0"

RUN apk --update add bash

ENTRYPOINT [ "/filebrowser" ]
