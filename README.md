## Hello Domains with Hanami

This is a full working example project to create a DNSimple addon with Hanami.

## Prerequisites

  * Ruby 2.3+ (with OpenSSL)
  * SQLite
  * A DNSimple [sandbox](https://developer.dnsimple.com/sandbox) account
  * A DNSimple [OAuth Application](https://support.dnsimple.com/articles/oauth-applications/) on sandbox

The OAuth Application has a `Client ID` and a `Client Secret` that you should use to setup this project.

## Setup

To setup this project, please use the following commands:

```shell
➜ git clone https://github.com/dnsimple/hello-domains-hanami.git
➜ cd hello-domains-hanami
➜ ./bin/setup [DNSIMPLE_CLIENT_ID] [DNSIMPLE_CLIENT_SECRET]
➜ bundle exec hanami server # visit http://localhost:2300
```

## Testing

To run the tests please run:

```shell
➜ bundle exec rake
```

## Copyright

Copyright (c) 2016 Aetrion LLC.
