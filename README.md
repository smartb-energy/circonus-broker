# circonus-broker

See `.kitchen.yml` for supported platforms.  Make sure ports 80 and 43191 are not blocked on your firewall/edge device, etc. so that you can configure your broker via the web UI and allow Circonus to talk to the broker (out.circonus.net).

### Tests
```
bundle
bundle exec kitchen test/verify [INSTANCE|REGEXP|all]
```

### Community Maintainers
Blake Irvin (blake.irvin@smartb.eu)
Arash Zandi (arash.zandi@smartb.eu)
