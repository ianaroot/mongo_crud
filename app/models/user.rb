class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  validates_uniqueness_of :email
  field :password_digest, type: String
  has_secure_password
end