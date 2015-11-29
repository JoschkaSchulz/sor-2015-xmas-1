require "test_helper"

class HomesControllerTest < ActionController::TestCase
  def test_show
    get :show
    assert_response :success
  end

end
