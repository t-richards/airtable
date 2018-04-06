require "json"

class Airtable::Table
  property name : String
  property parent_base : Airtable::Base

  def initialize(@parent_base, @name); end

  def create(data : Airtable::Record)
    headers = HTTP::Headers{
      "User-Agent"    => "Airtable for Crystal v0.1.0 (+https://github.com/t-richards/airtable)",
      "Content-type"  => "application/json",
      "Authorization" => "Bearer #{@parent_base.api_key}",
    }
    path = "/v0/#{@parent_base.name}/#{@name}"
    resp = @parent_base.http_client.post(path, headers, data.to_json)

    if resp.status_code != 200
      pp resp
      return Airtable::Error.from_json(resp.body, root: "error")
    end

    return true
  end
end
