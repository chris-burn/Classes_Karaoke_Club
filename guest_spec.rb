require ('minitest/autorun')
require ('minitest/rg')

require_relative('../guest')

class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Sean Jones", 200, "Even Flow")
    @guest2 = Guest.new("Andy Galloway", 10, "Gettin' Jiggy Wit It")
    @guest3 = Guest.new("Kelly Buchan", 150, "Rolling In The Deep")
    @guest4 = Guest.new("Bruce Wilby", 15, "Detroit Rock City")
  end

  def test_name()
    assert_equal("Sean Jones", @guest1.get_name())
  end

  def test_cash()
    assert_equal(150, @guest3.get_cash())
  end

  def test_favourite_song()
    assert_equal("Detroit Rock City", @guest4.get_favourite_song())
  end




end