class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, :through => :reviews

  attr_accessible :email, :password, :password_confirmation, :name

  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :name

end
