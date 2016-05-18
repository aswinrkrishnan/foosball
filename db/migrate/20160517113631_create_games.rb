class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :playerA1
      t.string :playerA2
      t.string :playerB1
      t.string :playerB2
      t.integer :ascore
      t.integer :bscore

      t.timestamps null: false
    end
  end
end
