require "test_helper"

class TrackGenresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_genre = track_genres(:one)
  end

  test "should get index" do
    get track_genres_url, as: :json
    assert_response :success
  end

  test "should create track_genre" do
    assert_difference("TrackGenre.count") do
      post track_genres_url, params: { track_genre: { genreid: @track_genre.genreid, trackid: @track_genre.trackid } }, as: :json
    end

    assert_response :created
  end

  test "should show track_genre" do
    get track_genre_url(@track_genre), as: :json
    assert_response :success
  end

  test "should update track_genre" do
    patch track_genre_url(@track_genre), params: { track_genre: { genreid: @track_genre.genreid, trackid: @track_genre.trackid } }, as: :json
    assert_response :success
  end

  test "should destroy track_genre" do
    assert_difference("TrackGenre.count", -1) do
      delete track_genre_url(@track_genre), as: :json
    end

    assert_response :no_content
  end
end
