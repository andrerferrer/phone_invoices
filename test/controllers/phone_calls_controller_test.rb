require 'test_helper'

class PhoneCallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phone_calls_index_url
    assert_response :success
  end

end
