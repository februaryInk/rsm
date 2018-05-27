require 'test_helper'

class ProductPhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_photos_index_url
    assert_response :success
  end

end
