class User
  include Mongoid::Document
  has_secure_password
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  validates_uniqueness_of :email
  field :password_digest, type: String
end