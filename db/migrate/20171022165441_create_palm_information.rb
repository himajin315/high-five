class CreatePalmInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :palm_informations do |t|
      t.integer :status,         default: 0, null: false
      t.integer :feeling_length
      t.integer :feeling_slope
      t.integer :knowledge_length
      t.integer :knowledge_slope
      t.integer :fate_slope
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :palm_informations, :status
  end
end
