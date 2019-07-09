## Hello Domains with Hanami

This is a full working example project to create a DNSimple addon with Hanami.

## Prerequisites

  * Ruby 2.3+ (with OpenSSL)
  * PostgreSQL 9.4+
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

### Development

By default, _Hello Domains_ targets DNSimple Sandbox.
If you need, for development purposes, to interact with a different DNSimple stage, please edit the following env vars in `.env.development`

  * `DNSIMPLE_BASE_URL`
  * `DNSIMPLE_AUTHORIZE_URL`
  * `DNSIMPLE_TOKEN_URL`

## Testing

To run the tests please run:

```shell
➜ bundle exec rake
```

## Copyright

Copyright (c) 2017 Aetrion LLC.
