require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  test 'should not save restaurant without a name' do
    restaurant = Restaurant.new
    assert_not restaurant.save, 'Saved the restaurant without a name'
  end

  test 'should not save restaurant without name 2' do
    restaurant = Restaurant.new
    restaurant.save
    assert_empty Restaurant.all, 'Saved the restaurant without a name'
  end

  test 'should not save a restaurant without a description' do
    restaurant = Restaurant.new(name: "Thai")
    assert_not restaurant.save, 'Saved the restaurant without description'
  end
end
