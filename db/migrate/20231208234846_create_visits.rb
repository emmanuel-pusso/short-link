class CreateVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :visits do |t|
      t.belongs_to: link, index: true, foreign_key: true
      t.datetime :date_visit
      t.string :ip_address

      t.timestamps
    end
  end
end
