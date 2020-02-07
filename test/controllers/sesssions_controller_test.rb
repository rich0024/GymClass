require 'test_helper'

class SesssionsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get sesssions_home_url
    assert_response :success
  end

end
