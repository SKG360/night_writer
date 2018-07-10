require "./lib/hashes.rb"

class NightWriter
  attr_accessor :read_file, :reader, :writer, :hash_for_top

  def initialize
    @reader = File.open(ARGV[0], "r")
    @writer = File.open(ARGV[1], "w")
    @read_file = @reader.read
    @reader.close


  end

  def break_up(original_string)
    if original_string.length > 40
      # takes first 40 characters
      new_string = original_string[0..39]
      # writes first 40 characters - see string_pring method below
      @writer.write(string_print(new_string))
      # if > 40 characters, then the remainder is assigned to "next_string"
      next_string = original_string[40..original_string.length]
      break_up(next_string)
    else
      @writer.write(string_print(original_string))
    end
  end

  def write_file(string)
    break_up(string)
    puts "Created '#{ARGV[1]}' containing #{(@read_file.length - 1) * 6} characters"
    @writer.close
  end

  def hash_top(top_two)
    top_hash = Hashes.new
    top_hash.hash_for_top[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = Hashes.new
    mid_hash.hash_for_mid[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = Hashes.new
    bottom_hash.hash_for_bottom[bottom_two]
  end

  def conversion(convert)
    convert.chars
  end

  def translate_top(top_input)
    translated_array = conversion(top_input).map do |letter|
      hash_top(letter)
    end
    translated_array.join
  end

  def translate_mid(mid_input)
    translated_array = conversion(mid_input).map do |letter|
      hash_mid(letter)
    end
    translated_array.join
  end

  def translate_bottom(bottom_input)
    translated_array = conversion(bottom_input).map do |letter|
      hash_bottom(letter)
    end
    translated_array.join
  end

  def string_print(translate_input)
    string_input = "#{translate_top(translate_input)}\n#{translate_mid(translate_input)}\n#{translate_bottom(translate_input)}\n"
    # p string_input
    # string_input
  end

end

<<<<<<< HEAD

nw = NightWriter.new
binding.pry
=======
nw = NightWriter.new
>>>>>>> e948b6cdd3d26fb226c7a55fa116c4e7f4242406
nw.write_file(nw.read_file)
