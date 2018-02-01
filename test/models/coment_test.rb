require 'test_helper'

class ComentTest < ActiveSupport::TestCase
  def setup
      @coment = Coment.new(user_id:1, pin_id:1, body:"nianiani")
    end
    test "body should be present" do
      @coment.body = "     "
      assert_not @coment.valid?
  end
end
