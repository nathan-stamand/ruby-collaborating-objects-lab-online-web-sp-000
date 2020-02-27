class MP3Importer 
  attr_accessor :path
  
  def initialize(file_path)
    @path= file_path
  end
  
  def files 
    @files = Dir.entries(@path)
    puts @files
  end
  
  def import
    Dir.entries(@path).each do |file|
      Song.new_by_filename(file)
    end
  end
  
end 