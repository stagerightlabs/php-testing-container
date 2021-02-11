# PHP Runner Light - PHP 7.4

This is a docker container intended for use in continuous integration environments. It has PHP 7.4 and a handful of PHP extensions already installed.

## Composer

This container does not include composer. To add Composer you can either extend this container or, if you are using GitHub Actions, you can use the [php-actions/composer](https://github.com/php-actions/composer) action.

## Node

This container does not include node. To add Node you can either extend this container or, if you are using GitHub Actions, you can use the [actions/setup-node](https://github.com/actions/setup-node) action.

## Credits

This container was inspired by the Kirschbaum Development Group's [Laravel Test Runner](https://github.com/kirschbaum-development/laravel-test-runner-container).
