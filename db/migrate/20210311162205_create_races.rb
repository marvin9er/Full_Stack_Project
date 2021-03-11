class CreateRaces < ActiveRecord::Migration[6.1]
  def change
    create_table :races do |t|
      t.has_many :subraces
      t.string :index
      t.string :name
      t.integer :speed
      t.string :alignment
      t.string :age
      t.string :size
      t.string :size_desc
      t.string :language_desc
      t.string :subraces
      t.string :url

      t.timestamps
    end
  end
end
