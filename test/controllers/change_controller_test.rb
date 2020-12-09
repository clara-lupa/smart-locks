require 'test_helper'

class ChangeControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get change_new_url
    assert_response :success
  end

  test "should get create" do
    get change_create_url
    assert_response :success
  end

end
