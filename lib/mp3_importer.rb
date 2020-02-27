class MP3Importer 
  attr_accessor :path
  
  def initialize(file_path)
    @path= file_path
  end
  
  def files 
    Dir.entries(@path)
  end
  
  def import
    @path.each do |file|
      Song.
  end
  
end 