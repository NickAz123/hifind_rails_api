class Element < ApplicationRecord
    has_many :track_elements
    has_many :tracks, :through => :track_elements
end
