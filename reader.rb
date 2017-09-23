class FileReader
  attr_accessor :file
  
  def initialize(file)
    @file = file
  end
  
  def read
    puts " "
    puts "Reading file using simple file reader"
    contents = File.read(@file)
    puts contents
  end
end
