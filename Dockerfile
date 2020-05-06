FROM alpine

LABEL "com.github.actions.name"="curl for Github Action"
LABEL "com.github.actions.description"="Wraps curl for Github Actions"
LABEL "com.github.actions.icon"="download-cloud"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/nathane/curl"
LABEL "homepage"="http://github.com/nathane/curl"
LABEL "maintainer"="Nathan Esayeas"

RUN apk add --no-cache curl ca-certificates

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]