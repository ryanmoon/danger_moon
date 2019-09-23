FROM ruby:2.6.3-alpine

RUN apk add --update --no-cache git bash
RUN gem install danger

WORKDIR /data
ENTRYPOINT [ "danger", "dry_run", "--dangerfile=/data/Dangerfile"]
