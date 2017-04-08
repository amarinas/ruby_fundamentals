class Blog < ActiveRecord::Base
  has_many :posts
  has_many :owners

  #all the users that owns a blog
  has_many :users, through: :owners
  # all the user that posted on a post
  has_many :user_posts, through: :posts, source: :user
  
  validates :name, :description, presence:true

end
