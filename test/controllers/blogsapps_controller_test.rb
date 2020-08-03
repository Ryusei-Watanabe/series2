require 'test_helper'

class BlogsappsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogsapps_index_url
    assert_response :success
  end

end
