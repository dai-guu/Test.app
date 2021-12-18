require 'test_helper'

class LayoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get layouts_index_url
    assert_response :success
  end

  test "should get show" do
    get layouts_show_url
    assert_response :success
  end

  test "should get new" do
    get layouts_new_url
    assert_response :success
  end

  test "should get edit" do
    get layouts_edit_url
    assert_response :success
  end

end
