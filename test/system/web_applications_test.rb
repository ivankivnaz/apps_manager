require "application_system_test_case"

class WebApplicationsTest < ApplicationSystemTestCase
  setup do
    @web_application = web_applications(:one)
  end

  test "visiting the index" do
    visit web_applications_url
    assert_selector "h1", text: "Web Applications"
  end

  test "creating a Web application" do
    visit web_applications_url
    click_on "New Web Application"

    fill_in "Name", with: @web_application.name
    fill_in "Path", with: @web_application.path
    fill_in "Url", with: @web_application.url
    click_on "Create Web application"

    assert_text "Web application was successfully created"
    click_on "Back"
  end

  test "updating a Web application" do
    visit web_applications_url
    click_on "Edit", match: :first

    fill_in "Name", with: @web_application.name
    fill_in "Path", with: @web_application.path
    fill_in "Url", with: @web_application.url
    click_on "Update Web application"

    assert_text "Web application was successfully updated"
    click_on "Back"
  end

  test "destroying a Web application" do
    visit web_applications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Web application was successfully destroyed"
  end
end
