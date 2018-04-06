require "./spec_helper"

describe Airtable do
  # TODO: Write tests

  it "is initializable" do
    Airtable::Base.new(api_key: "abc", base: "123")
  end

  it "has a table method" do
    db = Airtable::Base.new(api_key: "abc", base: "123")
    db.table("foo").should be_a(Airtable::Table)
  end

  it "has a create method" do
    db = Airtable::Base.new(api_key: "abc", base: "123")
    table = db.table("foo")
    record = Airtable::Record.new({"foo" => "bar"})

    table.responds_to?(:create).should be_true
  end
end
