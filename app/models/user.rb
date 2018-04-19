class User < ApplicationRecord
  has_many :classifieds
  has_secure_password

  validates_presence_of :fullname, :password_digest
  validates_presence_of :username
end
