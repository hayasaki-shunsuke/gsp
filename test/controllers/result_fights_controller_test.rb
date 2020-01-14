require 'test_helper'

class ResultFightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @result_fight = result_fights(:one)
  end

  test "should get index" do
    get result_fights_url
    assert_response :success
  end

  test "should get new" do
    get new_result_fight_url
    assert_response :success
  end

  test "should create result_fight" do
    assert_difference('ResultFight.count') do
      post result_fights_url, params: { result_fight: { game_result: @result_fight.game_result, global_smash_power: @result_fight.global_smash_power, my_fighter: @result_fight.my_fighter, rival_fighter: @result_fight.rival_fighter, user_id: @result_fight.user_id } }
    end

    assert_redirected_to result_fight_url(ResultFight.last)
  end

  test "should show result_fight" do
    get result_fight_url(@result_fight)
    assert_response :success
  end

  test "should get edit" do
    get edit_result_fight_url(@result_fight)
    assert_response :success
  end

  test "should update result_fight" do
    patch result_fight_url(@result_fight), params: { result_fight: { game_result: @result_fight.game_result, global_smash_power: @result_fight.global_smash_power, my_fighter: @result_fight.my_fighter, rival_fighter: @result_fight.rival_fighter, user_id: @result_fight.user_id } }
    assert_redirected_to result_fight_url(@result_fight)
  end

  test "should destroy result_fight" do
    assert_difference('ResultFight.count', -1) do
      delete result_fight_url(@result_fight)
    end

    assert_redirected_to result_fights_url
  end
end
