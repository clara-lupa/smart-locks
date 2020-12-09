require 'test_helper'

class LockControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get lock_create_url
    assert_response :success
  end

  test "should get update" do
    get lock_update_url
    assert_response :success
  end

end
