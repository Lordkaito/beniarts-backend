class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :email, type: String
  field :password, type: String
  field :role, type: String, default: "user"

  User.create!(name: "John Doe", email: "mail@another.com", password: "password")


  def is_admin?
    self.role == "admin"
  end
end