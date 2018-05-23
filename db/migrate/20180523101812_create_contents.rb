class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :description
      t.integer :views
      t.integer :downloads
      t.boolean :is_public

      t.timestamps
    end
  end
end
