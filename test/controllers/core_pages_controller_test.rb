require 'test_helper'

class CorePagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get core_pages_home_url
    assert_response :success
  end

end
