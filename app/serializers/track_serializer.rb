class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :producers, :mixengineer, :masterengineer, :releasedate, :imagesrc
  # has_many :track_genres
  has_many :genres
end
