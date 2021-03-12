class CreateTraits < ActiveRecord::Migration[6.1]
  def change
    create_table :traits do |t|
      t.string :index
      t.string :races
      t.string :subraces
      t.string :name
      t.string :desc
      t.string :url

      t.timestamps
    end
  end
end
