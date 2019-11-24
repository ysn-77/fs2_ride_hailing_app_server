require 'test_helper'

class PingControllerTest < ActionDispatch::IntegrationTest
  test "should ping with data" do
    data = 'ping'
    get ping_url, params: { ping: data }
    assert_response :success
    json_response = JSON.parse(response.body).with_indifferent_access
    assert_equal json_response[:pong][:ping], data
  end

end
