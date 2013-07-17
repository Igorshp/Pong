require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { ball_position_x: @game.ball_position_x, ball_positiong_y: @game.ball_positiong_y, end_time: @game.end_time, player1: @game.player1, player1_position: @game.player1_position, player1_score: @game.player1_score, player2: @game.player2, player2_position: @game.player2_position, player2_score: @game.player2_score, result: @game.result, start_time: @game.start_time, status: @game.status }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { ball_position_x: @game.ball_position_x, ball_positiong_y: @game.ball_positiong_y, end_time: @game.end_time, player1: @game.player1, player1_position: @game.player1_position, player1_score: @game.player1_score, player2: @game.player2, player2_position: @game.player2_position, player2_score: @game.player2_score, result: @game.result, start_time: @game.start_time, status: @game.status }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
