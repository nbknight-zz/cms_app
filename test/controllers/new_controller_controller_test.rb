require 'test_helper'

class NewControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_controller_index_url
    assert_response :success
  end

  test "should get new" do
    get new_controller_new_url
    assert_response :success
  end

  test "should get show" do
    get new_controller_show_url
    assert_response :success
  end

end
