class AddExtraFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :height, :float
    add_column :users, :weight, :float
    add_column :users, :date_of_birth, :date
    add_column :users, :gender, :string
    add_column :users, :phone_number, :integer
  end
end
