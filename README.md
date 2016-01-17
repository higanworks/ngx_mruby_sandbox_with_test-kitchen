# ngx_mruby sandbox with test-kitchen

build nginx which includes ngx_mruby by nginx-build.

## Setup

```
$ bundle --binstubs --path vendor/bundle
```

## Create Servers

- server: launch nginx wihch includes ngx_mruby.
- client: Benchmark tools.
    - ab(Apache Bench)
    - h2load

```
$ ./bin/kitchen converge
## If nginx was not started, do convege again.
```


## Benchmark

From server(target => localhost).

```
$ ./bin/kitchen verify server
```

From client(target => server).

```
$ ./bin/kitchen verify client
```
