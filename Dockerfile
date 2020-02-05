FROM filebrowser/filebrowser:latest as filebrowser

MAINTAINER opsforge.io
LABEL name="filebrowser"
LABEL version="1.0"

FROM alpine:latest

COPY --from=filebrowser /.filebrowser.json /.filebrowser.json
COPY --from=filebrowser /filebrowser /filebrowser

RUN apk --update add bash

ENTRYPOINT [ "/filebrowser" ]
