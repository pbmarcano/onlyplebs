require "test_helper"

class WellKnownControllerTest < ActionDispatch::IntegrationTest
  test "should get nostr" do
    get well_known_nostr_url
    assert_response :success
  end
end
