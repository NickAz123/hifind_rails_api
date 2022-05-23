class Track < ApplicationRecord
    has_many :track_genres
    has_many :track_elements
end
