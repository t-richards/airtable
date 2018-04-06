require "http/client"

class Airtable::Base
  property api_key : String
  property name : String
  property http_client : HTTP::Client

  def initialize(@api_key, base)
    @name = base

    uri = URI.parse("https://api.airtable.com/")
    @http_client = HTTP::Client.new(uri)
  end

  def table(table_name : String)
    Airtable::Table.new(self, table_name)
  end
end
