require "pry"
require "./lib/hashes_for_braille"

class NightReader
    attr_accessor :read_file
    def initialize
      @reader = File.open(ARGV[0], "r")
      @writer = File.open(ARGV[1], "w")
      @read_file = @reader.read
      @reader.close
    end

    def braille_array
      @read_file.split("\n")
    end

    def array_top
      "#{braille_array[0]}#{braille_array[3]}#{braille_array[6]}#{braille_array[9]}"
    end

    def array_mid
      "#{braille_array[1]}#{braille_array[4]}#{braille_array[7]}#{braille_array[10]}"
    end

    def array_bottom
      "#{braille_array[2]}#{braille_array[5]}#{braille_array[8]}#{braille_array[11]}"
    end

    def top_chunks
      array_top.scan(/.{2}/)
    end

    def mid_chunks
      array_mid.scan(/.{2}/)
    end

    def bottom_chunks
      array_bottom.scan(/.{2}/)
    end

    def write_it
      holder = []
      x = 0
      while holder.count < top_chunks.length
        holder << x
        x += 1
      end
      hash = HashesForBraille.new
      oops = []
      holder.each do |piece|
        y = "#{top_chunks[piece]}#{mid_chunks[piece]}#{bottom_chunks[piece]}"
        oops << hash.hash_for_braille[y]
      end
      @writer.write(oops.join)
      puts "Created '#{ARGV[1]}' containing #{@read_file.length / 6} characters"
    end


end

nightreader = NightReader.new
nightreader.write_it
