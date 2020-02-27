class MP3Importer 
  attr_accessor :path
  
  def initialize(file_path)
    @path= file_path
  end
  
  def files 
    Dir@path[0]("*.mp3")
  end
  
  def import
    Dir.entries(@path).each do |file|
      Song.new_by_filename(file)
    end
  end
  
end 