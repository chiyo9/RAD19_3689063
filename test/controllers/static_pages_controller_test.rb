require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Course App"
  end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get courses" do
    get courses_path
    assert_response :success
    assert_select "title", "Course | #{@base_title}"
  end

end
