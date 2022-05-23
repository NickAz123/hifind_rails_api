require "test_helper"

class TrackElementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_element = track_elements(:one)
  end

  test "should get index" do
    get track_elements_url, as: :json
    assert_response :success
  end

  test "should create track_element" do
    assert_difference("TrackElement.count") do
      post track_elements_url, params: { track_element: { elementid: @track_element.elementid, trackid: @track_element.trackid } }, as: :json
    end

    assert_response :created
  end

  test "should show track_element" do
    get track_element_url(@track_element), as: :json
    assert_response :success
  end

  test "should update track_element" do
    patch track_element_url(@track_element), params: { track_element: { elementid: @track_element.elementid, trackid: @track_element.trackid } }, as: :json
    assert_response :success
  end

  test "should destroy track_element" do
    assert_difference("TrackElement.count", -1) do
      delete track_element_url(@track_element), as: :json
    end

    assert_response :no_content
  end
end
