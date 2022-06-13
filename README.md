# phx-starter

A small script to create a new elixir phoenix app with (free) databases in elephantSQL

## Prerequisites

- An elephantSQL account and API key: https://customer.elephantsql.com/apikeys
- Phoenix and mix phx.new installed (see https://hexdocs.pm/phoenix/installation.html)

## Steps

- Put your API key in a .env file at the root of this folder, i.e.:

```
API_KEY=xxxxx-xxxxx-xxxx-xxxx-xxxxxxxxxx
```

- Run the script, providing a base path and a project name. The name will be used to create the phoenix project
