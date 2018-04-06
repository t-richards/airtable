require "../src/airtable"

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
