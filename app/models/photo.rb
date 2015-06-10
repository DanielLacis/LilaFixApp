class Photos < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true

  has_attached_file :photo, styles: {
        big: "600x600>",
        small: "50x50#"
      }
      validates_attachment_content_type(
        :photo,
        content_type: /\Aimage\/.*\Z/
      )
end
