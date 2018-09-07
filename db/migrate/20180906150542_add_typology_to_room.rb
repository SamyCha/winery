class AddTypologyToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :Typology, :string
  end
end
