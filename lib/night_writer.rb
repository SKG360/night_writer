class NightWriter

  def initialize
    @reader = File.open(ARGV[0], "r")
    @writer = File.open(ARGV[1], "w")
  end

  def read_file
    @reader.read
  end

  def write_file
    @writer.write
  end

  def hash_top(top_two)
    top_hash = {"h" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"h" => "00"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"h" => ".."}
    bottom_hash[bottom_two]
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
    print translate_top + "\n" + translate_mid + "\n" + translate_bottom + "\n"
  end

end
