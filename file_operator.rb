require_relative 'reader'
require_relative 'csv_reader'
require_relative 'yaml_reader'
require_relative 'json_reader'



#FileReader.new(ARGV[0]).read
#CsvReader.new(ARGV[0]).read
#YamlReader.new(ARGV[0]).read
#JsonReader.new(ARGV[0]).read
FILENAME = ARGV[0]

def file_extention(filename)
  filename.split('.')
end

def reader_class
  ext = file_extention(FILENAME).last
  return CsvReader if ext == 'csv'
  return YamlReader if ext == 'yml'
  return JsonReader if ext == 'json'
  FileReader
end

reader_class.new(FILENAME).read