require "json"

class Airtable::Error
  JSON.mapping(
    kind: {type: String, key: "type"},
    message: {type: String, key: "message"}
  )
end
