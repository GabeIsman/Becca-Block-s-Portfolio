class Design < ActiveRecord::Base
  has_many :details, :class_name => "Image"
  has_one :image
  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :details
end
