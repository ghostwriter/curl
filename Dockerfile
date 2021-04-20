FROM alpine

LABEL "com.github.actions.name"="curl for Github Action"
LABEL "com.github.actions.description"="Wraps curl for Github Actions"
LABEL "com.github.actions.icon"="download-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/ghostwriter/curl"
LABEL "homepage"="http://github.com/ghostwriter/curl"
LABEL "maintainer"="Nathan Esayeas"

RUN apk add --update --no-cache curl ca-certificates jq

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]