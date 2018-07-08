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

end
