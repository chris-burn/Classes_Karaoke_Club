require ('minitest/autorun')
require ('minitest/rg')

require_relative('../song')

class TestSong < MiniTest::Test

  def setup()
    @song1 = Song.new("Jump in the Line", "Harry Belafonte", 7)
    @song2 = Song.new("Detroit Rock City", "Kiss", 9)
    @song3 = Song.new("Girls on Film", "Duran Duran", 6)
    @song4 = Song.new("Gettin' Jiggy Wit It", "Will Smith", 5)
  end

  def test_song_name()
    assert_equal("Gettin' Jiggy Wit It", @song4.get_song_name())
  end

  def test_artist_name
    assert_equal("Will Smith", @song4.get_artist_name())
  end

  def test_song_rating
    assert_equal(9, @song2.get_song_rating())
  end

end



