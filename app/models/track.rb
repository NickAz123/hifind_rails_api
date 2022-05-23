class Track < ApplicationRecord
    has_many :track_genres
    has_many :track_elements

    has_many :genres, :through => :track_genres
end
