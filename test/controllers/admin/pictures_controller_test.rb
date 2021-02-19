require 'test_helper'

class Admin::PicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_pictures_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_pictures_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_pictures_edit_url
    assert_response :success
  end

end
