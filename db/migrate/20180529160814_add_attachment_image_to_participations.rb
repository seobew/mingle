class AddAttachmentImageToParticipations < ActiveRecord::Migration[5.1]
  def self.up
    change_table :participations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :participations, :image
  end
end
