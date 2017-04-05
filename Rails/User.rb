#create
rails new user_login_project
#create model
rails g model User first_name:string last_name:string email_address:string age:integer
rake db:migrate


u = User.new(first_name: "al", last_name: "mk", email_address: "al@mk.com", age: 30)
u.save
User.create(first_name: "ali", last_name: "mks", email_address: "ali@mks.com", age: 31)
User.create(first_name: "ally", last_name: "mksla", email_address: "ally@doe.com", age: 32)
User.create(first_name: "allison", last_name: "sddood", email_address: "alkd@doe.com", age: 33)
User.create(first_name: "alim", last_name: "Doddsde", email_address: "alim@doe.com", age: 34)


class User < ActiveRecord::Base
  validates :first_name, :last_name, :email_address, :age, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 10, less_than: 150 }
  validates :first_name, :last_name, length: { minimum: 2 }
end

u = User.new
u.save
u.valid?
u.errors
u.errors.full_messages


u1 =User.create(first_name: "allison", last_name: "sddood", email_address: "alkd@doe.com", age: 151)
u2 =User.create(first_name: "allison", last_name: "sddood", email_address: "alkd@doe.com", age: 9)
u3 =User.create(first_name: "allison", last_name: "sddood", email_address: "alkd@doe.com", age: 14)

u1.errors.messages
u2.errors.full_messages
u3.errors.full_messages

User.all

User.first

User.last

User.order(first_name: :desc)

u1 = User.find(3)
u1.update(last_name: "Smith")

User.find(4).destroy
