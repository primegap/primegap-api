# Primegap::API

[![Code Climate](https://codeclimate.com/github/primegap/primegap-api/badges/gpa.svg)](https://codeclimate.com/github/primegap/primegap-api) [![Test Coverage](https://codeclimate.com/github/primegap/primegap-api/badges/coverage.svg)](https://codeclimate.com/github/primegap/primegap-api/coverage) [![Build Status](https://travis-ci.org/primegap/primegap-api.svg?branch=master)](https://travis-ci.org/primegap/primegap-api)

An experiment to unbundle a typical Rails application:

- [primegap-core](https://github.com/primegap/primegap-core) A Rails engine that contains the models and services to provide the business logic
- [primegap-api](https://github.com/primegap/primegap-api) A Rails::Api application that exposes a JSON Rest Api and uses primegap-core
- [primegap-admin](https://github.com/primegap/primegap-admin) A Rails web application that provides the administrative backend and uses primegap-core
