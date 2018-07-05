require 'pry'
require "./lib/binary_translator"
require "minitest/autorun"
require "minitest/pride"

class TranslatorTest < Minitest::Test

  def test_it_exists
    skip
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_translate_returns_correct_binary_letter
    skip
    bt = Translator.new
    assert_equal "01100001", bt.translate("a")
  end

  def test_translate_returns_correct_binary_letter
    skip
    bt = Translator.new
    assert_equal "01101011", bt.translate("k")
  end
  
  def test_translate_returns_correct_binary_word
    bt = Translator.new
    assert_equal ["011101000111010101110010011010010110111001100111"], bt.translate("turing")
  end

  def test_translate_capitals
    skip
    bt = Translator.new
    assert_equal "01100001", bt.translate("A")
  end

  def test_translate_capitals
    skip
    bt = Translator.new
    assert_equal "01111010", bt.translate("Z")
  end

  def test_translate_non_letters_into_empty_strings
    bt = Translator.new
    assert_equal "", bt.translate_non_letters("!!!!")
  end
end
