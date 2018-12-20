require 'test_helper'

class PaintsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get paints_index_url
    assert_response :success
  end

end
