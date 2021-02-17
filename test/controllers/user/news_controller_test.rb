require 'test_helper'

class User::NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_news_show_url
    assert_response :success
  end

end
