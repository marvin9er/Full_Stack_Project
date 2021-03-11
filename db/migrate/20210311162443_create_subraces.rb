class CreateSubraces < ActiveRecord::Migration[6.1]
  def change
    create_table :subraces do |t|
      t.belongs_to :races
      t.string :index
      t.string :name
      t.string :race
      t.string :desc
      t.string :url

      t.timestamps
    end
  end
end
