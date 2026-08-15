require "test_helper"

class FlightSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flight_search_index_url
    assert_response :success
  end

  test "should get results" do
    get flight_search_results_url
    assert_response :success
  end
end
