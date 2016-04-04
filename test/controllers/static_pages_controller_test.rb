require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  #the setup function is called before tests are run
  # to streamline writing tests that use similar information 
  def setup  
    @base_title = "URA"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title} | Home"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "#{@base_title} | Help"
  end

  test "should get about" do
  	get :about
  	assert_response :success
  	assert_select "title", "#{@base_title} | About"
  end

end
