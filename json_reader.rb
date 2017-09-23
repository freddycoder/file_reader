require 'json'
require_relative 'reader'

class JsonReader < FileReader
  def read
    puts " "
    puts "Reading the Json file"
    json_file = File.read(@file)
    contents = JSON.load(json_file)
    puts contents
  end
end
