class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :password, :password_confirmation, :name

  validates_presence_of :name
  validates_uniqueness_of :name

  def self.authenticate( name, password )
    User.find_by_name( name ).try( :authenticate, password )
  end
end
