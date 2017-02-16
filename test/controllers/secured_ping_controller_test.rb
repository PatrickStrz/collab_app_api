require 'test_helper'

class SecuredPingControllerTest < ActionDispatch::IntegrationTest
  test "should get ping" do
    get secured_ping_ping_url
    assert_response :success
  end

end
