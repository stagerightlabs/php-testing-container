# Lightweight PHP Docker Container

This is a docker container intended for running PHP tests in a continuous integration environment such as GitHub Actions.

[View this container on Docker Hub.](https://hub.docker.com/r/stagerightlabs/php-test-runner)

Lightweight is a relative term here, of course. These images include postgres bindings and various other system tools needed for certain PHP extensions.

## PHP Extensions

These images include the following PHP extensions, where applicable:

- bcmath
- gd
- intl
- mongodb
- PCOV
- pgsql
- zip

## Credits

This container was inspired by the Kirschbaum Development Group's [Laravel Test Runner](https://github.com/kirschbaum-development/laravel-test-runner-container).
