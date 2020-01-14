class CreateResultFights < ActiveRecord::Migration[6.0]
  def change
    create_table :result_fights do |t|
      t.integer :user_id
      t.integer :my_fighter
      t.integer :rival_fighter
      t.integer :game_result
      t.integer :global_smash_power

      t.timestamps
    end
  end
end
