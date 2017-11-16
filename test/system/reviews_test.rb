require "application_system_test_case"
require "test_helper"

class ReviewsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit reviews_url
  #
  #   assert_selector "h1", text: "Reviews"
  # end
  test "review is added to show restaurant page" do

    new_restaurant

    fill_in 'review[review]', with: "Pretty nice"
  
    click_on "Post Review"

    assert_text "Pretty nice"

  end

end
