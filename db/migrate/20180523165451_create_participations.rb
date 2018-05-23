class CreateParticipations < ActiveRecord::Migration[5.1]
  def change
    create_table :participations do |t|
      t.references :content, foreign_key: true
      t.string :user_name
      t.boolean :is_recommend
      t.boolean :is_public

      t.timestamps
    end
  end
end
