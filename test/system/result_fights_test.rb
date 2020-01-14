require "application_system_test_case"

class ResultFightsTest < ApplicationSystemTestCase
  setup do
    @result_fight = result_fights(:one)
  end

  test "visiting the index" do
    visit result_fights_url
    assert_selector "h1", text: "Result Fights"
  end

  test "creating a Result fight" do
    visit result_fights_url
    click_on "New Result Fight"

    fill_in "Game result", with: @result_fight.game_result
    fill_in "Global smash power", with: @result_fight.global_smash_power
    fill_in "My fighter", with: @result_fight.my_fighter
    fill_in "Rival fighter", with: @result_fight.rival_fighter
    fill_in "User", with: @result_fight.user_id
    click_on "Create Result fight"

    assert_text "Result fight was successfully created"
    click_on "Back"
  end

  test "updating a Result fight" do
    visit result_fights_url
    click_on "Edit", match: :first

    fill_in "Game result", with: @result_fight.game_result
    fill_in "Global smash power", with: @result_fight.global_smash_power
    fill_in "My fighter", with: @result_fight.my_fighter
    fill_in "Rival fighter", with: @result_fight.rival_fighter
    fill_in "User", with: @result_fight.user_id
    click_on "Update Result fight"

    assert_text "Result fight was successfully updated"
    click_on "Back"
  end

  test "destroying a Result fight" do
    visit result_fights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Result fight was successfully destroyed"
  end
end
