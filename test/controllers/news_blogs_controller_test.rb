require "test_helper"

class NewsBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get news_blogs_index_url
    assert_response :success
  end
end
