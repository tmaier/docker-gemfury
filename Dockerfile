FROM ruby:3.0-alpine
LABEL maintainer="Tobias L. Maier <tobias.maier@baucloud.com>"

# hadolint ignore=DL3028
RUN gem install --no-document gemfury

WORKDIR /workdir

ENTRYPOINT ["fury"]
CMD ["--help"]
