class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.string :description
      t.integer :arrows
      t.integer :scoring
      t.string :indoor_outdoor
      t.integer :order_id
      t.boolean :on_card
      t.boolean :official
      t.string :group_letter

      t.timestamps
    end
  end
end
