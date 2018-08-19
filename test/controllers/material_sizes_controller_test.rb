require 'test_helper'

class MaterialSizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get material_sizes_index_url
    assert_response :success
  end

end
