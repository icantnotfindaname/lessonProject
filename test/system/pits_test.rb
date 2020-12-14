require "application_system_test_case"

class PitsTest < ApplicationSystemTestCase
  setup do
    @pit = pits(:one)
  end

  test "visiting the index" do
    visit pits_url
    assert_selector "h1", text: "Pits"
  end

  test "creating a Pit" do
    visit pits_url
    click_on "New Pit"

    fill_in "Cost", with: @pit.cost
    fill_in "Pid", with: @pit.pid
    fill_in "Pnum", with: @pit.pnum
    fill_in "Position", with: @pit.position
    fill_in "Size", with: @pit.size
    fill_in "State", with: @pit.state
    fill_in "Time", with: @pit.time
    fill_in "Usage", with: @pit.usage
    click_on "Create Pit"

    assert_text "Pit was successfully created"
    click_on "Back"
  end

  test "updating a Pit" do
    visit pits_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @pit.cost
    fill_in "Pid", with: @pit.pid
    fill_in "Pnum", with: @pit.pnum
    fill_in "Position", with: @pit.position
    fill_in "Size", with: @pit.size
    fill_in "State", with: @pit.state
    fill_in "Time", with: @pit.time
    fill_in "Usage", with: @pit.usage
    click_on "Update Pit"

    assert_text "Pit was successfully updated"
    click_on "Back"
  end

  test "destroying a Pit" do
    visit pits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pit was successfully destroyed"
  end
end
