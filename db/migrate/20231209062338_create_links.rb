class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.string :name
      t.string :slug
      t.string :large_url
      t.string :type
      t.datetime :expires_at
      t.boolean :visited
      t.string :password_link_access

      t.timestamps
    end
  end
end
