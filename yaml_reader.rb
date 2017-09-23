require 'yaml'
require_relative 'reader'

class YamlReader < FileReader
  def read
    puts " "
    puts "Reading the YML file"
    contents = YAML.load_file(@file)
    puts contents
  end
end
