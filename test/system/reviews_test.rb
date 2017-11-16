require "application_system_test_case"

class ReviewsTest < ApplicationSystemTestCase
  def new_restaurant
    visit restaurants_path

    click_on 'New Restaurant'

    fill_in 'restaurant[name]', with: 'Creating a Restaurant'
    fill_in 'restaurant[description]', with: 'Tell me about your food!'

    click_on 'Save'
  end

  test 'creating a review' do

    new_restaurant

    fill_in 'review[comment]', with: "wasn't bad"

    click_on "Post Review"

    assert_text "wasn't bad"
  end
end
