class MP3Importer
   attr_accessor :path, :files, :import
 def initialize(path)
 @path = path
 end
 def files
   Dir.entries(@path).select{|file| file.include?("mp3")}
 end
  def import
   files.each {|song| Song.new_by_filename(song)}
 end
end
