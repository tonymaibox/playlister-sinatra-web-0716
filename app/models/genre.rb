

class Genre < ActiveRecord::Base
  has_many :songs, through: :song_genres
  has_many :song_genres
  has_many :artists, through: :songs

  def slug
    self.name.slugify
  end
  def self.find_by_slug(slug)
    self.all.detect {|element| element.name.slugify == slug}
  end
end



