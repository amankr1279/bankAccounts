require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get accounts" do
    get admin_accounts_url
    assert_response :success
  end

  test "should get users" do
    get admin_users_url
    assert_response :success
  end

  test "should get show_account" do
    get admin_show_account_url
    assert_response :success
  end
  test "should get show_user" do
    get admin_show_user_url
    assert_response :success
  end
end
