class AddPictureToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :picture, :string, unique: true, after: :uid
  end
end
