require "application_system_test_case"

class RacesTest < ApplicationSystemTestCase
  setup do
    @race = races(:one)
  end

  test "visiting the index" do
    visit races_url
    assert_selector "h1", text: "Races"
  end

  test "creating a Race" do
    visit races_url
    click_on "New Race"

    fill_in "Age", with: @race.age
    fill_in "Alignment", with: @race.alignment
    fill_in "Index", with: @race.index
    fill_in "Language desc", with: @race.language_desc
    fill_in "Languages", with: @race.languages
    fill_in "Name", with: @race.name
    fill_in "Size", with: @race.size
    fill_in "Size desc", with: @race.size_desc
    fill_in "Speed", with: @race.speed
    fill_in "Subraces", with: @race.subraces
    fill_in "Traits", with: @race.traits
    fill_in "Url", with: @race.url
    click_on "Create Race"

    assert_text "Race was successfully created"
    click_on "Back"
  end

  test "updating a Race" do
    visit races_url
    click_on "Edit", match: :first

    fill_in "Age", with: @race.age
    fill_in "Alignment", with: @race.alignment
    fill_in "Index", with: @race.index
    fill_in "Language desc", with: @race.language_desc
    fill_in "Languages", with: @race.languages
    fill_in "Name", with: @race.name
    fill_in "Size", with: @race.size
    fill_in "Size desc", with: @race.size_desc
    fill_in "Speed", with: @race.speed
    fill_in "Subraces", with: @race.subraces
    fill_in "Traits", with: @race.traits
    fill_in "Url", with: @race.url
    click_on "Update Race"

    assert_text "Race was successfully updated"
    click_on "Back"
  end

  test "destroying a Race" do
    visit races_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Race was successfully destroyed"
  end
end
