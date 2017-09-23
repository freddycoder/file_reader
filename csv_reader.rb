require 'csv'
require_relative 'reader'

class CsvReader < FileReader
  
  def read
    puts " "
    puts "Reading the csv file"
    contents = CSV.read(@file)
    puts contents
  end
end
