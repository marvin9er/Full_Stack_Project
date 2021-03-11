require "test_helper"

class SubracesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subrace = subraces(:one)
  end

  test "should get index" do
    get subraces_url
    assert_response :success
  end

  test "should get new" do
    get new_subrace_url
    assert_response :success
  end

  test "should create subrace" do
    assert_difference('Subrace.count') do
      post subraces_url, params: { subrace: { ability_bonuses: @subrace.ability_bonuses, desc: @subrace.desc, index: @subrace.index, languages: @subrace.languages, name: @subrace.name, race: @subrace.race, starting_proficiencies: @subrace.starting_proficiencies, traits: @subrace.traits, url: @subrace.url } }
    end

    assert_redirected_to subrace_url(Subrace.last)
  end

  test "should show subrace" do
    get subrace_url(@subrace)
    assert_response :success
  end

  test "should get edit" do
    get edit_subrace_url(@subrace)
    assert_response :success
  end

  test "should update subrace" do
    patch subrace_url(@subrace), params: { subrace: { ability_bonuses: @subrace.ability_bonuses, desc: @subrace.desc, index: @subrace.index, languages: @subrace.languages, name: @subrace.name, race: @subrace.race, starting_proficiencies: @subrace.starting_proficiencies, traits: @subrace.traits, url: @subrace.url } }
    assert_redirected_to subrace_url(@subrace)
  end

  test "should destroy subrace" do
    assert_difference('Subrace.count', -1) do
      delete subrace_url(@subrace)
    end

    assert_redirected_to subraces_url
  end
end
