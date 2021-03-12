require "application_system_test_case"

class TraitsTest < ApplicationSystemTestCase
  setup do
    @trait = traits(:one)
  end

  test "visiting the index" do
    visit traits_url
    assert_selector "h1", text: "Traits"
  end

  test "creating a Trait" do
    visit traits_url
    click_on "New Trait"

    fill_in "Desc", with: @trait.desc
    fill_in "Index", with: @trait.index
    fill_in "Name", with: @trait.name
    fill_in "Races", with: @trait.races
    fill_in "Subraces", with: @trait.subraces
    fill_in "Url", with: @trait.url
    click_on "Create Trait"

    assert_text "Trait was successfully created"
    click_on "Back"
  end

  test "updating a Trait" do
    visit traits_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @trait.desc
    fill_in "Index", with: @trait.index
    fill_in "Name", with: @trait.name
    fill_in "Races", with: @trait.races
    fill_in "Subraces", with: @trait.subraces
    fill_in "Url", with: @trait.url
    click_on "Update Trait"

    assert_text "Trait was successfully updated"
    click_on "Back"
  end

  test "destroying a Trait" do
    visit traits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trait was successfully destroyed"
  end
end
