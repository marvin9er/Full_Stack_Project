class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :index
      t.string :name
      t.string :type
      t.string :typical_speakers
      t.string :script
      t.string :url

      t.timestamps
    end
  end
end
