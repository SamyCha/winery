class RemoveFullnameFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :Fullname, :string
  end
end
