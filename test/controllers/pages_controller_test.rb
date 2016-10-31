require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :index
    assert_response :success
  end

  test "should get ressources" do
    get :ressources
    assert_response :success
  end

  test "should get missions" do
    get :missions
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
