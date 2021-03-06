require "pry"
require "./lib/hashes"

class NightReader
    attr_accessor :read_file

    def initialize
      @reader = File.open(ARGV[0], "r")
      @writer = File.open(ARGV[1], "w")
      @read_file = @reader.read
      @reader.close
    end

    def braille_array(string)
      string.split("\n")
    end
#----------ch ch ch check it out!!!!---------------------------
    def array_top(string)
      index = 0
      array_to_join = []
      while index < braille_array(string).length
        array_to_join << braille_array(string)[index]
        index += 3
      end
      array_to_join.join
    end

    def array_mid(string)
      index = 1
      array_to_join = []
      while index < braille_array(string).length
        array_to_join << braille_array(string)[index]
        index += 3
      end
      array_to_join.join
    end

    def array_bottom(string)
      index = 2
      array_to_join = []
      while index < braille_array(string).length
        array_to_join << braille_array(string)[index]
        index += 3
      end
      array_to_join.join
    end
#--------------------------------------------------------
    def top_chunks(string)
      array_top(string).scan(/.{2}/)
    end

    def mid_chunks(string)
      array_mid(string).scan(/.{2}/)
    end

    def bottom_chunks(string)
      array_bottom(string).scan(/.{2}/)
    end

    def know_when_to_hold_em(string)
      holder = []
      x = 0
      while holder.count < top_chunks(string).length
        holder << x
        x += 1
      end
      holder
    end

    def write_worker(string)
      hash = Hashes.new
      array_to_join = []
      know_when_to_hold_em(string).each do |chunk|
        translated_character = "#{top_chunks(string)[chunk]}#{mid_chunks(string)[chunk]}#{bottom_chunks(string)[chunk]}"
        array_to_join << hash.hash_for_braille[translated_character]
      end
      array_to_join
    end

    def write_it(string)
      @writer.write(write_worker(string).join + "\n")
      puts "Created '#{ARGV[1]}' containing #{@read_file.length / 6} characters"
      @writer.close
    end

end
