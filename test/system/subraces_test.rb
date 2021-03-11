require "application_system_test_case"

class SubracesTest < ApplicationSystemTestCase
  setup do
    @subrace = subraces(:one)
  end

  test "visiting the index" do
    visit subraces_url
    assert_selector "h1", text: "Subraces"
  end

  test "creating a Subrace" do
    visit subraces_url
    click_on "New Subrace"

    fill_in "Ability bonuses", with: @subrace.ability_bonuses
    fill_in "Desc", with: @subrace.desc
    fill_in "Index", with: @subrace.index
    fill_in "Languages", with: @subrace.languages
    fill_in "Name", with: @subrace.name
    fill_in "Race", with: @subrace.race
    fill_in "Starting proficiencies", with: @subrace.starting_proficiencies
    fill_in "Traits", with: @subrace.traits
    fill_in "Url", with: @subrace.url
    click_on "Create Subrace"

    assert_text "Subrace was successfully created"
    click_on "Back"
  end

  test "updating a Subrace" do
    visit subraces_url
    click_on "Edit", match: :first

    fill_in "Ability bonuses", with: @subrace.ability_bonuses
    fill_in "Desc", with: @subrace.desc
    fill_in "Index", with: @subrace.index
    fill_in "Languages", with: @subrace.languages
    fill_in "Name", with: @subrace.name
    fill_in "Race", with: @subrace.race
    fill_in "Starting proficiencies", with: @subrace.starting_proficiencies
    fill_in "Traits", with: @subrace.traits
    fill_in "Url", with: @subrace.url
    click_on "Update Subrace"

    assert_text "Subrace was successfully updated"
    click_on "Back"
  end

  test "destroying a Subrace" do
    visit subraces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subrace was successfully destroyed"
  end
end
