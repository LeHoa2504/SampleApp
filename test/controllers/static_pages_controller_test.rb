require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
=begin
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
=end

  test "should get root" do
    get static_pages_home_url
    assert_response :success

  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
   # assert_select "title", "Home | #{@base_title}"

  end

  test "should get help" do
    get root_path
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
   # assert_select "title", "Help | #{@base_title}"

  end

   test "should get about" do
    get root_path
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
    #assert_select "title", "About | #{@base_title}"

  end

  test "should get contact" do
    get root_path
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails Tutorial Sample App"
  end


end
