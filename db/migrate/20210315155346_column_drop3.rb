class ColumnDrop3 < ActiveRecord::Migration[6.1]
  def change
    remove_column :traits, :races
  end
end
