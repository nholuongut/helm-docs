FROM alpine:3.20
LABEL maintainer="Nho Luong <luongutnho@hotmail.com>"
COPY helm-docs /usr/bin/

WORKDIR /helm-docs

ENTRYPOINT ["helm-docs"]
