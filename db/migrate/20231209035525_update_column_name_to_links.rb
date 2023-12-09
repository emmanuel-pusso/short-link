class UpdateColumnNameToLinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :links, :url
    add_column :links, :base_url, :string
  end
end
