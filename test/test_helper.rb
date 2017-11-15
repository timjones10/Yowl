require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'database_cleaner'
require "minitest/rails/capybara"

DatabaseCleaner.strategy = :transaction
# 
# class Minitest::Spec
#   before :each do
#     DatabaseCleaner.start
#   end
#
#   after :each do
#     DatabaseCleaner.clean
#   end
# end

# with the minitest-around gem, this may be used instead:
class Minitest::Spec
  around do |tests|
    DatabaseCleaner.cleaning(&tests)
  end
end

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
