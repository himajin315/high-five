class AddColumnMasukakeToPalmInformation < ActiveRecord::Migration[5.1]
  def change
    add_column :palm_informations, :masukake, :boolean, default: false, null: false, after: :fate_slope
  end
end
