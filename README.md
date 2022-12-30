# Gemfury Docker Image

This docker image is based on the official [Ruby](https://hub.docker.com/_/ruby/) image and adds the [Gemfury](https://gemfury.com) gem to it.
This is very useful for CI pipelines that need to upload gems to Gemfury.

[![Docker Pulls](https://img.shields.io/docker/pulls/tmaier/gemfury.svg)](https://hub.docker.com/r/tmaier/gemfury/)
[![Docker Stars](https://img.shields.io/docker/stars/tmaier/gemfury.svg)](https://hub.docker.com/r/tmaier/gemfury/)
[![GitHub issues](https://img.shields.io/github/issues/tmaier/docker-gemfury.svg)](https://github.com/tmaier/docker-gemfury/issues)
[![GitHub stars](https://img.shields.io/github/stars/tmaier/docker-gemfury.svg?style=social&label=Star)](https://github.com/tmaier/docker-gemfury)

## Usage instructions for GitLab CI

The following example shows how to use this image in a GitLab CI pipeline (e.g. `.gitlab-ci.yml`).
It depends on a `build` job that produces a `.gem` file in the `pkg` directory.

Configure `GEMFURY_API_TOKEN` as a [variable](https://docs.gitlab.com/ee/ci/variables/#variables) in the GitLab CI settings.
Learn more [how to manage access tokens (push tokens) at Gemfury](https://gemfury.com/help/tokens/#push-tokens-to-upload-packages).

```yml
upload:gemfury:
  image:
    name: tmaier/gemfury:latest
    entrypoint: [""]
  script:
    - fury push ./pkg/*.gem --api-token=$GEMFURY_API_TOKEN
  variables:
    GIT_STRATEGY: none
  dependencies:
    - build
  stage: upload
  only:
    - master
```

## Author

[Tobias L. Maier](https://tobiasmaier.info) for [BauCloud GmbH](https://www.baucloud.com)

## License

See [LICENSE](LICENSE).
