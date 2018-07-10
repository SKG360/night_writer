require "pry"
require "minitest/autorun"
require "minitest/pride"
require "./lib/night_reader"

class NightReaderTest < Minitest::Test

  def test_if_it_exists
    nr = NightReader.new
    assert_instance_of NightReader,nr
  end

  def test_for_the_braille_array
    nr = NightReader.new
    assert_equal ["0.","..",".."],nr.braille_array("0.\n..\n..")
  end

  def test_for_single_letter_braille_code
    nr = NightReader.new
    assert_equal "0.", nr.array_top("0.\n..\n..")
    assert_equal "..", nr.array_mid("0.\n..\n..")
    assert_equal "..", nr.array_bottom("0.\n..\n..")
  end

  def test_for_two_characters_of_string
    nr = NightReader.new
    assert_equal ["0."], nr.top_chunks("0.\n..\n..")
    assert_equal [".."], nr.mid_chunks("0.\n..\n..")
    assert_equal [".."], nr.bottom_chunks("0.\n..\n..")
  end

  def test_for_holder_length
    nr = NightReader.new
    assert_equal [0], nr.know_when_to_hold_em("0.\n..\n..")
  end

  def test_write_worker
    nr = NightReader.new
    assert_equal ["a"], nr.write_worker("0.\n..\n..")
  end

  def test_message_text
    nr = NightReader.new
    nr.write_it("0...\n..0.\n0...")
    writer = File.open(ARGV[1], "r")
    tester = File.open(ARGV[2], "r")
    writer = writer.read
    tester = tester.read
    assert_equal tester, writer
  end
  #how to measure write to file output

end
