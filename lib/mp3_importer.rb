#require "pry"

class MP3Importer

    attr_accessor :path
    
    def initialize(path)
        @path = path
    end

    def files
        #binding.pry
        @files = Dir.entries(@path)
        @files.delete_if { |file| file == "." || file == ".." }

    end

    def import  #(list_of_filenames)
         self.files.each { |filename| Song.new_by_filename(filename) }
    end


end