class Airtable::Record
  property fields : Hash(String, String)

  def initialize(@fields); end

  def to_json(io : JSON::Builder)
    io.object do
      io.field "fields" do
        io.object do
          @fields.each do |key, value|
            io.field key, value
          end
        end
      end
    end
  end
end
