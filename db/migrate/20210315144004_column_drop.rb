class ColumnDrop < ActiveRecord::Migration[6.1]
  def change
    remove_column :races, :subraces
    remove_column :traits, :subraces
  end
end
