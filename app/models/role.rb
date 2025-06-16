class Role < ApplicationRecord
  enum :name, {
    user: "user",
    admin: "admin"
  }

  has_many :users, dependent: :restrict_with_error
end
