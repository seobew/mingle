class Content < ApplicationRecord
	has_many :participations
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :photo, :content_type => /^image\/(jpeg|png|gif|tiff)$/

	validates_attachment_size :photo, :in => 0..10.megabytes

	has_attached_file :sample, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :sample, :content_type => /^image\/(jpeg|png|gif|tiff)$/

	validates_attachment_size :sample, :in => 0..10.megabytes
end
