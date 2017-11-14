require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit restaurants_path
    assert_selector "h1", text: "Restaurants"
  end
end
