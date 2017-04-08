class User < ActiveRecord::Base
  has_many :friendships, :foreign_key => "user_id", :class_name=> "Friendship"
  has_many :friends, :through => :friendships

  validates :first_name, :last_name, presence:true
end
