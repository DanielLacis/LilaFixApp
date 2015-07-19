# == Schema Information
#
# Table name: children
#
#  id          :integer          not null, primary key
#  name        :string
#  user_id     :string
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Child < ActiveRecord::Base
  has_one :photo, as: :imageable
end
