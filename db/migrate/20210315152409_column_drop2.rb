class ColumnDrop2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :traits, :subraces
  end
end
