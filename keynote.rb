require 'terminfo'

class Presentation
    def initialize(slides_file)
        @array_of_texts = FileReader.new(slides_file).get_slides_text
    end

    def display_slides
        @array_of_texts.each do |text|
            puts text
        end
    end
end

class FileReader
    def initialize(slides_file)
        @slides_file = slides_file
    end

    def get_slides_text
        IO.read(@slides_file).split("----\n").map(&:chomp)
    end
    
end

Presentation.new("slides.txt").display_slides





#Classes (slides, Presentation, FileReader, Userinput) Relationships(slide uses filereader> import_text, Presentation uses slides> show, Presentation uses userinput> get_commands)