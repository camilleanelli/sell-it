class User < ApplicationRecord
  has_secure_password
  
  has_many :classifieds

  validates_presence_of :fullname, :password_digest
  validates_presence_of :username

  def self.from_token_request(request)
    username = request.params['auth'] && request.params['auth']['username']
    self.find_by(username: username)
  end
end
