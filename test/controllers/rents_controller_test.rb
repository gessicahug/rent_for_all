require "test_helper"

class RentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rents_new_url
    assert_response :success
  end
end
