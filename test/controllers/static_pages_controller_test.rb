require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "URA | Home"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "URA | Help"
  end

  test "sshould get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "URA | About"
  end

end
