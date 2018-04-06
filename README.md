# airtable

Crystal bindings to the Airtable API.

:warning: This shard is in development! Expect bugs.

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  airtable:
    github: t-richards/airtable
```

## Usage

```crystal
require "airtable"

db = Airtable::Base.new(
  api_key: ENV["AIRTABLE_API_KEY"],
  base: "appNNNNN" # human readable database name here
)
table = db.table("TableName")

record = Airtable::Record.new({
  "Name"        => "New record thing",
  "Description" => "This record was created by the API",
})
result = table.create(record)

pp result
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/t-richards/airtable/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [t-richards](https://github.com/t-richards) Tom Richards - creator, maintainer
