
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(user: "Kikoudu19")
  end
  test "should be valid" do
    assert @user.valid?
  end
  test "user should be present" do
    @user.user = "     "
    assert_not @user.valid?
  end
end
