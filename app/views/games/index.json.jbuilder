json.array!(@games) do |game|
  json.extract! game, :player1, :player2, :status, :result, :player1_position, :player2_position, :ball_position_x, :ball_positiong_y, :player1_score, :player2_score, :start_time, :end_time
  json.url game_url(game, format: :json)
end
