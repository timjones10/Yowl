require 'application_system_test_case'
require 'database_cleaner'

class RestaurantsTest < ApplicationSystemTestCase
  test 'viewing the index' do
    visit restaurants_path
    assert_selector 'h1', text: 'Restaurants'
  end

  def new_restaurant
    visit restaurants_path

    click_on 'New Restaurant'

    fill_in 'restaurant[name]', with: 'Creating a Restaurant'
    fill_in 'restaurant[description]', with: 'Tell me about your food!'

    click_on 'Save'
  end

  test 'creating a restaurant listing' do

    new_restaurant

    assert_text 'Creating a Restaurant'
  end

  test 'deleting a restaurant listing' do
    new_restaurant

    click_on 'View Restaurants'

    accept_alert do
      click_link 'Delete'
    end

    assert_no_text 'Creating a Restaurant'
  end

  test 'editing a restaurant listing' do
    new_restaurant

    click_on 'View Restaurants'

    click_on 'Edit Listing'

    assert_text "Name"
  end

  test 'validating the description field in the new restaurant' do
    visit restaurants_path
    click_on 'New Restaurant'
    fill_in 'restaurant[name]', with: 'Thai'
    click_on 'Save'
    assert_no_text "Thai"
  end

  test 'showing error messages for invalid entry- without name' do
    visit restaurants_path
    click_on 'New Restaurant'
    fill_in 'restaurant[description]', with: 'very nice'
    click_on 'Save'
    assert_text "Name can't be blank"
  end

  test 'showing error messages for invalid entry- without description' do
    visit restaurants_path
    click_on 'New Restaurant'
    fill_in 'restaurant[name]', with: 'Japanese'
    click_on 'Save'
    assert_text "Description can't be blank"
  end

end
