class AddAttachmentPhotoToContents < ActiveRecord::Migration[5.1]
  def self.up
    change_table :contents do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :contents, :photo
  end
end
