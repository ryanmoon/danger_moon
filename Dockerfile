FROM ruby:2.6.3-alpine

# LABEL fields for GitHub Actions
LABEL "com.github.actions.name"="danger_moon"
LABEL "com.github.actions.description"="Use Danger to simplify your CI/CD Process"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="gray-dark"
LABEL "repository"="https://github.com/SlackIT/danger_moon"
LABEL "homepage"="https://github.com/SlackIT/danger_moon"
LABEL "maintainer"="Ryan Moon (https://github.com/ryanmoon)"

RUN apk add --update --no-cache git
RUN gem install danger -v '>= 5.10.3'

ENTRYPOINT "danger"
CMD "--verbose"
