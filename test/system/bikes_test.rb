require "application_system_test_case"

class BikesTest < ApplicationSystemTestCase
  setup do
    @bike = bikes(:one)
  end

  test "visiting the index" do
    visit bikes_url
    assert_selector "h1", text: "Bikes"
  end

  test "creating a Bike" do
    visit bikes_url
    click_on "New Bike"

    fill_in "Make", with: @bike.make
    fill_in "Model", with: @bike.model
    fill_in "Year", with: @bike.year
    click_on "Create Bike"

    assert_text "Bike was successfully created"
    click_on "Back"
  end

  test "updating a Bike" do
    visit bikes_url
    click_on "Edit", match: :first

    fill_in "Make", with: @bike.make
    fill_in "Model", with: @bike.model
    fill_in "Year", with: @bike.year
    click_on "Update Bike"

    assert_text "Bike was successfully updated"
    click_on "Back"
  end

  test "destroying a Bike" do
    visit bikes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bike was successfully destroyed"
  end
end
