class Guest

  def initialize(name, cash, favourite_song)
    @name = name
    @cash = cash
    @favourite_song = favourite_song
  end 

 def get_name()
   return @name
 end

 def get_cash()
   return @cash
 end

 def get_favourite_song()
   return @favourite_song
 end


end