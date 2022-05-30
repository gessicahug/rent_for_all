require "test_helper"

class ItensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get itens_index_url
    assert_response :success
  end

  test "should get show" do
    get itens_show_url
    assert_response :success
  end

  test "should get new" do
    get itens_new_url
    assert_response :success
  end
end
