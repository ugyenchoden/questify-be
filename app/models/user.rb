class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :trackable, :jwt_authenticatable, jwt_revocation_strategy: self

  belongs_to :role
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
end
