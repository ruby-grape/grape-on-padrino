Grape API on Padrino
====================

[![Build Status](http://img.shields.io/travis/dblock/grape-on-padrino.svg)](https://travis-ci.org/dblock/grape-on-padrino)
[![Dependency Status](https://gemnasium.com/dblock/grape-on-padrino.svg)](https://gemnasium.com/dblock/grape-on-padrino)
[![Code Climate](https://codeclimate.com/github/dblock/grape-on-padrino.svg)](https://codeclimate.com/github/dblock/grape-on-padrino)

A [Grape](http://github.com/intridea/grape) API mounted on the [Padrino Web Framework](http://www.padrinorb.com).

* [ping](api/ping.rb): a hello world example that returns a JSON document

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

