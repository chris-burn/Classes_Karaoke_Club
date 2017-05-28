class Song

  def initialize(title, artist, rating)
    @title = title
    @artist = artist
    @rating = rating
    # @lyrics = lyrics
  end 

  def get_song_name
    return @title
  end

  def get_artist_name
    return @artist
  end

  def get_song_rating
    return @rating
  end


end