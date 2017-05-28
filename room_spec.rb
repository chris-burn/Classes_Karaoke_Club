require ('minitest/autorun')
require ('minitest/rg')

require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test

  def setup()
    @room1 = Room.new("The Barras", 30, 15)
    @room2 = Room.new("Tuts", 20, 10)
    @room3 = Room.new("Sleazys", 10, 5)
    @room4 = Room.new("The Hydro", 100, 20)
    @guest1 = Guest.new("Sean Jones", 200, "Even Flow")
    @guest2 = Guest.new("Andy Galloway", 10, "Gettin' Jiggy Wit It")
    @guest3 = Guest.new("Kelly Buchan", 150, "Rolling In The Deep")
    @guest4 = Guest.new("Bruce Wilby", 15, "Detroit Rock City")
    @song1 = Song.new("Jump in the Line", "Harry Belafonte", 7)
    @song2 = Song.new("Detroit Rock City", "Kiss", 9)
    @song3 = Song.new("Girls on Film", "Duran Duran", 6)
    @song4 = Song.new("Gettin' Jiggy Wit It", "Will Smith", 5)
  end

  def test_room_name()
    assert_equal("The Barras", @room1.get_room_name())
  end

  def test_room_capacity()
    assert_equal(30, @room1.get_room_capacity())
  end

  def test_check_room_population()
    assert_equal(0, @room1.check_room_population())
  end

  def test_room_entry_fee
    assert_equal(20, @room4.get_room_entry_fee())
  end

  # def test_print_list_of_guests()
  #   @room1.check_in_guest_to_room(@guest1)
  #   @room1.check_in_guest_to_room(@guest4)
  #   assert_equal(["Sean Jones", "Bruce Wilby"], @room1.print_list_of_guests())
  # end

  # def test_print_list_of_songs()
  #   @room1.add_song_to_room(@song1)
  #   @room1.add_song_to_room(@song2)
  #   assert_equal(["Jump in the line", Gettin' Jiggy Wit It"], @room1.print_list_of_songs())
  # end

  def test_check_in_guest_to_room()
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(1, @room1.check_room_population())
  end

  def test_check_out_guest_from_room()
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(1, @room1.check_room_population())
    @room1.check_out_guest_from_room(@guest1)
    assert_equal(0, @room1.check_room_population())
  end

  def test_room_availability()
    assert_equal("Free capacity in room.", @room1.room_availability())
  end

  def test_guest_already_in_room()
    assert_equal(0, @room1.check_room_population())
    @room1.check_in_guest_to_room(@guest1)
    assert_equal(1, @room1.check_room_population())
    assert_equal(true, @room1.guest_already_in_room(@guest1))
  end

  def test_song_already_in_room()
    assert_equal(0, @room1.check_song_list_length())
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.check_song_list_length())
    assert_equal(true, @room1.song_already_in_room(@song1))
  end

  def test_add_song_to_room()
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.check_song_list_length())
  end

  def test_remove_song_from_room()
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.check_song_list_length())
    @room1.remove_song_from_room(@song1)
    assert_equal(0, @room1.check_song_list_length())
  end

  # def test_guest_fees_affordability()
  #   assert_equal(false, @room4.can_guest_afford_fees(@guest2))
  # end

end