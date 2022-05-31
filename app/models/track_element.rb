class TrackElement < ApplicationRecord
    belongs_to :track, optional: true
    belongs_to :element, optional: true
end
