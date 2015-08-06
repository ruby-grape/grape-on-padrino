Grape API on Padrino
====================

[![Build Status](https://travis-ci.org/ruby-grape/grape-on-padrino.svg?branch=master)](https://travis-ci.org/ruby-grape/grape-on-padrino)
[![Dependency Status](https://gemnasium.com/ruby-grape/grape-on-padrino.svg)](https://gemnasium.com/ruby-grape/grape-on-padrino)
[![Code Climate](https://codeclimate.com/github/ruby-grape/grape-on-padrino.svg)](https://codeclimate.com/github/ruby-grape/grape-on-padrino)

A [Grape](http://github.com/ruby-grape/grape) API mounted on the [Padrino Web Framework](http://www.padrinorb.com).

* [ping](api/ping.rb): a hello world example that returns a JSON document

Heroku
------

In instance of grape-on-padrino is deployed on Heroku at [grape-on-padrino.herokuapp.com](http://grape-on-padrino.herokuapp.com/ping).

Run
---

```
$ bundle install
$ rackup
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
rake routes
```

