require 'test_helper'

class WebApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_application = web_applications(:one)
  end

  test "should get index" do
    get web_applications_url
    assert_response :success
  end

  test "should get new" do
    get new_web_application_url
    assert_response :success
  end

  test "should create web_application" do
    assert_difference('WebApplication.count') do
      post web_applications_url, params: { web_application: { name: @web_application.name, path: @web_application.path, url: @web_application.url } }
    end

    assert_redirected_to web_application_url(WebApplication.last)
  end

  test "should show web_application" do
    get web_application_url(@web_application)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_application_url(@web_application)
    assert_response :success
  end

  test "should update web_application" do
    patch web_application_url(@web_application), params: { web_application: { name: @web_application.name, path: @web_application.path, url: @web_application.url } }
    assert_redirected_to web_application_url(@web_application)
  end

  test "should destroy web_application" do
    assert_difference('WebApplication.count', -1) do
      delete web_application_url(@web_application)
    end

    assert_redirected_to web_applications_url
  end
end
