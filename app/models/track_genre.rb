class TrackGenre < ApplicationRecord
    belongs_to :track
    has_one :genre
end
