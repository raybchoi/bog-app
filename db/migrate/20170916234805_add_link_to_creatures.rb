class AddLinkToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :links, :string
  end
end
