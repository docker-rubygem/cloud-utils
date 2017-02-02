FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.2

RUN gem install cloud-utils --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["deploy"]
CMD ["--help"]
