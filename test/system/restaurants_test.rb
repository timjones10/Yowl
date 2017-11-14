require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit restaurants_path
    assert_selector "h1", text: "Restaurants"
  end

  test "creating a restaurant" do
    visit restaurants_path

    click_on "New Restaurant"

    fill_in "restaurant[name]", with: "Creating a Restaurant"
    fill_in "restaurant[description]", with: "Tell me about your food!"

    click_on "Save Restaurant"

    assert_text "Creating a Restaurant"
  end
end
