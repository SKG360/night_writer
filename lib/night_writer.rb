require "pry"
require "./lib/hashes.rb"

class NightWriter
  attr_accessor :read_file, :reader, :writer

  def initialize
    @reader = File.open(ARGV[0], "r")
    @writer = File.open(ARGV[1], "w")
    @read_file = @reader.read
    @reader.close
  end

  def write_file
        @writer.write
  end

  def hash_top(top_two)
    top_hash = Hash.new
    top_hash.hash_for_top[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = Hash.new
    mid_hash.hash_for_mid[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = Hash.new
    bottom_hash.hash_for_bottom[bottom_two]
  end

  def conversion
    read_file.chars
  end

  def translate_top
    translated_array = conversion.map do |letter|
      hash_top(letter)
    end
    translated_array.join
  end

  def translate_mid
    translated_array = conversion.map do |letter|
      hash_mid(letter)
    end
    translated_array.join
  end

  def translate_bottom
    translated_array = conversion.map do |letter|
      hash_bottom(letter)
    end
    translated_array.join
  end

  def string_print
    puts "#{translate_top}\n#{translate_mid}\n#{translate_bottom}"
  end

end
