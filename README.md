Grape API on Padrino
====================

[![Build Status](https://secure.travis-ci.org/dblock/grape-on-padrino.png)](http://travis-ci.org/dblock/grape-on-padrino)

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

