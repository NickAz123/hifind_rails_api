class TrackGenreSerializer < ActiveModel::Serializer
  attributes :genre_id
  # has_one :genre, foreign_key: 'id'
end
