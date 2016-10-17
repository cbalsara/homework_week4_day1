require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/word_formatter'

class TestWordFormatter < Minitest::Test

  def setup
    @word_formatter = WordFormatter.new
  end 

 def test_upcase
   assert_equal('E13 ZQF', @word_formatter.upcase('e13 zqf'))
 end 



end