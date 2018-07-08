
class Hashes
  attr_accessor :hash_for_top, :hash_for_mid, :hash_for_bottom
  def initialize
    @hash_for_top = {
      " " => "..",
      "a" => "0.",
      "b" => "0.",
      "c" => "00",
      "d" => "00",
      "e" => "0.",
      "f" => "00",
      "g" => "00",
      "h" => "0.",
      "i" => ".0",
      "j" => ".0",
      "k" => "0.",
      "l" => "0.",
      "m" => "00",
      "n" => "00",
      "o" => "0.",
      "p" => "00",
      "q" => "00",
      "r" => "0.",
      "s" => ".0",
      "t" => ".0",
      "u" => "0.",
      "v" => "0.",
      "w" => ".0",
      "x" => "00",
      "y" => "00",
      "z" => "0."
    }
    @hash_for_mid = {
      " " => "..",
      "a" => "..",
      "b" => "0.",
      "c" => "..",
      "d" => ".0",
      "e" => ".0",
      "f" => "0.",
      "g" => "00",
      "h" => "00",
      "i" => "0.",
      "j" => "00",
      "k" => "..",
      "l" => "0.",
      "m" => "..",
      "n" => ".0",
      "o" => ".0",
      "p" => "0.",
      "q" => "00",
      "r" => "00",
      "s" => "0.",
      "t" => "00",
      "u" => "..",
      "v" => "0.",
      "w" => "00",
      "x" => "..",
      "y" => ".0",
      "z" => ".0"
    }
    @hash_for_bottom = {
      " " => "..",
      "a" => "..",
      "b" => "..",
      "c" => "..",
      "d" => "..",
      "e" => "..",
      "f" => "..",
      "g" => "..",
      "h" => "..",
      "i" => "..",
      "j" => "..",
      "k" => "0.",
      "l" => "0.",
      "m" => "0.",
      "n" => "0.",
      "o" => "0.",
      "p" => "0.",
      "q" => "0.",
      "r" => "0.",
      "s" => "0.",
      "t" => "0.",
      "u" => "00",
      "v" => "00",
      "w" => ".0",
      "x" => "00",
      "y" => "00",
      "z" => "00"
    }
  end

  def hash_top(top_two)
    top_hash = {"i" => ".0"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"i" => "0."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"i" => ".."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"j" => ".0"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"j" => "00"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"j" => ".."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"k" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"k" => ".."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"k" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"l" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"l" => "0."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"l" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"m" => "00"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"m" => ".."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"m" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"n" => "00"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"n" => ".0"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"n" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"o" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"o" => ".0"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"o" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"p" => "00"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"p" => "0."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"p" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"q" => "00"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"q" => "00"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"q" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"r" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"r" => "00"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"r" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"s" => ".0"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"s" => "0."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"s" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"t" => ".0"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"t" => "00"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"t" => "0."}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"u" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"u" => ".."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"u" => "00"}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"v" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"v" => "0."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"v" => "00"}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"w" => ".0"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"w" => "00"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"w" => ".0"}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"x" => "00"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"x" => ".."}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"x" => "00"}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"y" => "00"}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"y" => ".0"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"y" => "00"}
    bottom_hash[bottom_two]
  end

  def hash_top(top_two)
    top_hash = {"z" => "0."}
    top_hash[top_two]
  end

  def hash_mid(mid_two)
    mid_hash = {"z" => ".0"}
    mid_hash[mid_two]
  end

  def hash_bottom(bottom_two)
    bottom_hash = {"z" => "00"}
    bottom_hash[bottom_two]
  end
end

# braille_to_alpha = {
#     'O.....'=> 'a', 'O.O...'=> 'b', 'OO....'=> 'c', 'OO.O..'=> 'd',
#     'O..O..'=> 'e', 'OOO...'=> 'f', 'OOOO..'=> 'g', 'O.OO..'=> 'h',
#     '.OO...'=> 'i', '.OOO..'=> 'j', 'O...O.'=> 'k', 'O.O.O.'=> 'l',
#     'OO..O.'=> 'm', 'OO.OO.'=> 'n', 'O..OO.'=> 'o', 'OOO.O.'=> 'p',
#     'OOOOO.'=> 'q', 'O.OOO.'=> 'r', '.OO.O.'=> 's', '.OOOO.'=> 't',
#     'O...OO'=> 'u', 'O.O.OO'=> 'v', '.OOO.O'=> 'w', 'OO..OO'=> 'x',
#     'OO.OOO'=> 'y', 'O..OOO'=> 'z'
# }
# alpha_to_braille = {
#     'a' => 'O.....', 'b' => 'O.O...', 'c' => 'OO....', 'd' => 'OO.O..',
#     'e' => 'O..O..', 'f' => 'OOO...', 'g' => 'OOOO..', 'h' => 'O.OO..',
#     'i' => '.OO...', 'j' => '.OOO..', 'k' => 'O...O.', 'l' => 'O.O.O.',
#     'm' => 'OO..O.', 'n' => 'OO.OO.', 'o' => 'O..OO.', 'p' => 'OOO.O.',
#     'q' => 'OOOOO.', 'r' => 'O.OOO.', 's' => '.OO.O.', 't' => '.OOOO.',
#     'u' => 'O...OO', 'v' => 'O.O.OO', 'w' => '.OOO.O', 'x' => 'OO..OO',
#     'y' => 'OO.OOO', 'z' => 'O..OOO'
# }
