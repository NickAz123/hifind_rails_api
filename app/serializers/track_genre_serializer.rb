class TrackGenreSerializer < ActiveModel::Serializer
  attributes :genre_id
  has_one :genre
end
