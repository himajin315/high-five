class AddColumnGenderToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :gender, :integer, default: 0, after: :email
  end
end
