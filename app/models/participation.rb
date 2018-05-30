class Participation < ApplicationRecord
  belongs_to :content
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /^image\/(jpeg|png|gif|tiff)$/

	validates_attachment_size :image, :in => 0..10.megabytes
end
