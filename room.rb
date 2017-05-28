class Room

  def initialize(room_name, capacity, entry_fee)
    @room_name = room_name
    @capacity = capacity
    @entry_fee = entry_fee
    @population = []
    @songs = []
  end 

  def get_room_name()
    return @room_name
  end

  def get_room_capacity()
    return @capacity
  end

  def get_room_entry_fee
    return @entry_fee
  end

  def check_room_population()
    @population.count()
  end

  def check_song_list_length()
    @songs.count()
  end

  def guest_already_in_room(guest)
   @population.include? guest 
  end

  # def print_list_of_guests()
  #   for name in @population
  #     print name
  #   end
  #   # @population
  # end  

  # def print_list_of_songs()
  #   for song in @songs
  #     print song
  #   end
  # end 

  def check_in_guest_to_room(guest)
    if (guest_already_in_room(guest) == false) &&
    (check_room_population != get_room_capacity)
      @population << guest
      return "#{guest} checked-in to room."
    else
      return "Room full! Please check-out a current guest and try again."
    end
  end

  def check_out_guest_from_room(guest)
    for customer in @population
      if customer = guest
        @population.delete(guest)
        return "#{guest} removed from room."
      else 
        return "#{guest} not present in room."
      end
    end
  end

  def room_availability()
    if check_room_population != get_room_capacity
      return "Free capacity in room." 
    else 
      return "Room full. Please check-out a current guest before trying again."
    end
  end

  def song_already_in_room(song)
   @songs.include? song
  end

  def add_song_to_room(song_to_add)
    if (song_already_in_room(song_to_add) == false)
      @songs << song_to_add
      return "#{song_to_add} added to room."
    else
      return "Song already available in room."
    end
  end


  def remove_song_from_room(song_to_remove)
    for song in @songs
      if song = song_to_remove
        @songs.delete(song_to_remove)
        return "#{song_to_remove} removed from room."
      else 
        return "#{song_to_remove} not present in room."
      end
    end
  end

  # def can_guest_afford_fees(guest)
  #   if @cash < @entry_fee
  #     return "Guest cannot afford room fees."
  #   else 
  #     return "Guest can afford room fees"
  #   end
  # end

end