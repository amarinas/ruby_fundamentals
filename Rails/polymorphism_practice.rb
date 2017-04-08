# navigate to the project folder and created the model
rails g model Comment content:text commentable:references{polymorphic}

# open the file Comment in the model and  added
  belongs_to :commentable, polymorphic: true

#opend the User model and added the comment relationship with the comment
  has_many :comments, as: :commentable

#opened the blog model and inserted has many relationship
  has_many :comments, as: :commentable

  # added the comments relationship
  has_many :comments, as: :commentable

  #added the comment realationship in the post model

class Post < ActiveRecord::Base
  has_many :comments, as: :commentable

#added the comment relationship in the message comment
class Message < ActiveRecord::Base
  has_many :comments, as: :commentable

# add comments for user, blog, post and message
Comment.create(content: "This is a comment from the 2nd user", commentable: User.second)
Comment.create(content: "Another comment from the 2nd user", commentable: User.second)
User.second.comments

Comment.create(content: "This is a comment on the first blog", commentable: Blog.first)
Comment.create(content: "Another comment on the first blog", commentable: Blog.first)
Blog.first.comments

Comment.create(content: "This is a comment on the third post", commentable: Post.third)
Comment.create(content: "Another comment on the third post", commentable: Post.third)
Post.third.comments

Comment.create(content: "This is a comment on the tenth message", commentable: Message.find(10))
Comment.create(content: "Another comment on the tenth message", commentable: Message.find(10))
Message.find(10).comments
