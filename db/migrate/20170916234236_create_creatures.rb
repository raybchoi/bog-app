class CreateCreatures < ActiveRecord::Migration[5.1]
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :description
      # https://stackoverflow.com/questions/6167994/assigning-default-value-while-creating-migration-file
      t.boolean :delete_flag, :default =>false

      t.timestamps
    end
  end
end
