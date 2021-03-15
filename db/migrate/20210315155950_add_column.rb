class AddColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :subraces, :race_id, :string
  end
end
