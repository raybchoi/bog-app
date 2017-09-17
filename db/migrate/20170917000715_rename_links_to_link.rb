class RenameLinksToLink < ActiveRecord::Migration[5.1]
  def change
    rename_column :creatures, :links, :link
  end
end
