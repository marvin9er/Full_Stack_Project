class FixColumnName < ActiveRecord::Migration[6.0]
  def self.up
    change_column :languages, :type, :string
    rename_column :languages, :type, :lang_type

  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end
