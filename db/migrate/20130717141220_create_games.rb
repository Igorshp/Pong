class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :player1
      t.string :player2
      t.string :status
      t.string :result
      t.integer :player1_position
      t.integer :player2_position
      t.integer :ball_position_x
      t.integer :ball_positiong_y
      t.integer :player1_score
      t.integer :player2_score
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
