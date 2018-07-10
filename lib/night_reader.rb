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

    def array_top(string)
      "#{braille_array(string)[0]}#{braille_array(string)[3]}#{braille_array(string)[6]}#{braille_array(string)[9]}"
    end

    def array_mid(string)
      "#{braille_array(string)[1]}#{braille_array(string)[4]}#{braille_array(string)[7]}#{braille_array(string)[10]}"
    end

    def array_bottom(string)
      "#{braille_array(string)[2]}#{braille_array(string)[5]}#{braille_array(string)[8]}#{braille_array(string)[11]}"
    end

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
      #counts indexes in an array by way of the character length from each index
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
      @writer.write(write_worker(string).join)
      puts "Created '#{ARGV[1]}' containing #{@read_file.length / 6} characters"
      @writer.close 
    end


end

nr = NightReader.new
nr.write_it(nr.read_file)
