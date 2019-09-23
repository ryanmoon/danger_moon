FROM ruby:2.6.3-alpine

#################
# GITHUB ACTIONS
#################
LABEL "com.github.actions.name"="danger_moon"
LABEL "com.github.actions.description"="Use Danger to simplify your CI/CD Process"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="orange"
LABEL "repository"="https://github.com/ryanmoon/danger_moon"
LABEL "homepage"="https://github.com/ryanmoon/danger_moon"
LABEL "maintainer"="Ryan Moon (https://github.com/ryanmoon)"

RUN apk add --update --no-cache git
RUN gem install danger

ENTRYPOINT "danger"
CMD "--verbose"
