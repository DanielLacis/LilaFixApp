class Child < ActiveRecord::Base
  has_one :photo, as: :imageable
end