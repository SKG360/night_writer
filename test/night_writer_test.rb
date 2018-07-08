require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test

  def test_it_exists
    nw = NightWriter.new
      assert_instance_of NightWriter, nw
  end

  def test_reader
    nw = NightWriter.new
    assert_instance_of File, nw.reader
  end

  def test_writer
    nw = NightWriter.new
    assert_instance_of File, nw.writer
  end

  def test_for_all_three
    nw = NightWriter.new
    assert_equal "0.", nw.hash_top("a")
    assert_equal "..", nw.hash_mid("a")
    assert_equal "..", nw.hash_bottom("a")
  end

  def test_for_conversion
    nw = NightWriter.new
    assert_equal ["a","n","d"], nw.conversion("and")
  end

  def test_all_three_translations
    nw = NightWriter.new
    assert_equal "0.0000", nw.translate_top("and")
    assert_equal "...0.0", nw.translate_mid("and")
    assert_equal "..0...", nw.translate_bottom("and")
  end

  def test_for_string_print
      nw = NightWriter.new
      assert_equal "0.0000\n...0.0\n..0...\n", nw.string_print("and")
  end


end
