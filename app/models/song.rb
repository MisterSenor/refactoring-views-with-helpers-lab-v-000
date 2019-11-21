class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(artist_name)
    artist_name = Artist.find_by_name(artist_name)
  end

  def artist_name
    @artist_name
  end

end
