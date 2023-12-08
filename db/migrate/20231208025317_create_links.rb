class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.belongs_to: user, index: true, foreign_key: true
      t.string :name
      t.string :slug, index: true
      t.string :url
      t.string :type

      t.timestamps
    end
  end
end
