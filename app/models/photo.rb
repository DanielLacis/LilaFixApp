# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#  imageable_id       :integer
#  imageable_type     :string
#  created_at         :datetime
#  updated_at         :datetime
#

class Photo < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  has_attached_file :photo, styles: {
    big: "600x600>",
    medium: "300x300>",
    small: "50x50#"
  }
  validates_attachment_content_type(
    :photo,
    content_type: /\Aimage\/.*\Z/
  )
end
