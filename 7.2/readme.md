# PHP Runner Light - PHP 7.2

This is a docker container intended for use in continuous integration environments. It has PHP 7.2 and a handful of PHP extensions already installed.

## Composer

This container comes with Composer 2 already installed and ready to go.

## Node

This container does not include node. To add Node you can either extend this container or, if you are using GitHub Actions, you can use the [actions/setup-node](https://github.com/actions/setup-node) action.

## Credits

This container was inspired by the Kirschbaum Development Group's [Laravel Test Runner](https://github.com/kirschbaum-development/laravel-test-runner-container).
