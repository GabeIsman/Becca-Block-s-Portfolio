class Design < ActiveRecord::Base
  has_many :details, :class_name => "Image"
  has_one :image
end
