class Post
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  #how to associate post to user in mongo

  belongs_to :user

end
