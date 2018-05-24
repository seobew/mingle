class AddAttachmentSampleToContents < ActiveRecord::Migration[5.1]
  def self.up
    change_table :contents do |t|
      t.attachment :sample
    end
  end

  def self.down
    remove_attachment :contents, :sample
  end
end
