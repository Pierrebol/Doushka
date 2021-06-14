require 'test_helper'

class DisguisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get disguises_index_url
    assert_response :success
  end

  test "should get show" do
    get disguises_show_url
    assert_response :success
  end

  test "should get new" do
    get disguises_new_url
    assert_response :success
  end

  test "should get create" do
    get disguises_create_url
    assert_response :success
  end

  test "should get update" do
    get disguises_update_url
    assert_response :success
  end

  test "should get edit" do
    get disguises_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get disguises_destroy_url
    assert_response :success
  end

end
