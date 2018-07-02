require 'test_helper'

class MortagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mortages_index_url
    assert_response :success
  end

  test "should get show" do
    get mortages_show_url
    assert_response :success
  end

  test "should get new" do
    get mortages_new_url
    assert_response :success
  end

  test "should get create" do
    get mortages_create_url
    assert_response :success
  end

  test "should get edit" do
    get mortages_edit_url
    assert_response :success
  end

  test "should get update" do
    get mortages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mortages_destroy_url
    assert_response :success
  end

end
