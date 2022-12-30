FROM ruby:3.0-alpine
LABEL org.opencontainers.image.authors="Tobias L. Maier <tobias.maier@baucloud.com>" \
      org.opencontainers.image.licenses="MIT" \
      org.opencontainers.image.source="https://github.com/tmaier/docker-gemfury" \
      org.opencontainers.image.title="gemfury"

# hadolint ignore=DL3028
RUN gem install --no-document gemfury

WORKDIR /workdir

ENTRYPOINT ["fury"]
CMD ["--help"]
