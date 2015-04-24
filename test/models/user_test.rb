require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "test user model" do
        user = User.new(:first_name => 'Jamie')
        assert_equal 'Jamie', user.first_name
    end
end
