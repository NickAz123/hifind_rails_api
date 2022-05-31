class TrackGenre < ApplicationRecord
    belongs_to :track, optional: true
    belongs_to :genre, optional: true
end
