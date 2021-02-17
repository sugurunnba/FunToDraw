require 'test_helper'

class User::QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_questions_new_url
    assert_response :success
  end

  test "should get create" do
    get user_questions_create_url
    assert_response :success
  end

  test "should get show" do
    get user_questions_show_url
    assert_response :success
  end

  test "should get index" do
    get user_questions_index_url
    assert_response :success
  end

  test "should get edit" do
    get user_questions_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_questions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_questions_destroy_url
    assert_response :success
  end

end
