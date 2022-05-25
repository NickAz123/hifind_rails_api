class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :producers, :mixengineer, :masterengineer, :releasedate, :imagesrc, :description
  
  has_many :genres
  has_many :elements
end
