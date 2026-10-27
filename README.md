# Grape on Padrino

[![Tests](https://github.com/ruby-grape/grape-on-padrino/actions/workflows/test.yml/badge.svg?branch=master)](https://github.com/ruby-grape/grape-on-padrino/actions/workflows/test.yml)
[![Coverage Status](https://coveralls.io/repos/github/ruby-grape/grape-on-padrino/badge.svg?branch=master)](https://coveralls.io/github/ruby-grape/grape-on-padrino?branch=master)

A [Grape](https://github.com/ruby-grape/grape) API mounted on the [Padrino Web Framework](https://padrinorb.com).

* [ping](api/ping.rb): a hello world example that returns a JSON document

Tests
-----

GitHub Actions tests Padrino 0.15 and 0.16 on Ruby 3.3 and the latest Padrino 0.17 on Ruby 3.4 and 4.0. Padrino 0.15 uses Sinatra 2 and Grape 2.4. Newer Padrino lines use Sinatra 4 and Grape 3.2: Sinatra requires Mustermann 3, while Grape 3.3 and 4 require Mustermann 4, so those newer Grape versions cannot currently share a bundle with Padrino.

Run `bundle exec rake spec`. To select the legacy stack, use `PADRINO_VERSION='~> 0.15.0' SINATRA_VERSION='~> 2.2' GRAPE_VERSION='~> 2.4' bundle update` and set the same variables when running tests. Matrix jobs resolve dependencies independently of the application lockfile. RuboCop runs separately.

SimpleCov starts before the application loads and tracks application, API, and configuration files. CI uploads `coverage/lcov.info` from each matrix job to Coveralls and finishes the parallel coverage build after all jobs pass.

Run
---

Use Ruby 3.4 or 4.0 with the default Padrino 0.17 bundle. Puma is included as the Rack server.

```
$ bundle install
$ bundle exec rackup
```

### Hello World

Navigate to http://localhost:9292/ping with a browser or use `curl`.

```
$ curl http://localhost:9292/ping

{"ping":"pong"}
```

List Routes
-----------

```
bundle exec rake routes
```
