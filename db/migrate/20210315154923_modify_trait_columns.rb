class ModifyTraitColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :traits, :races, :string
  end
end
