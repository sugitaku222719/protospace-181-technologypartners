class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :prototypes
  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :profile, :team, :role, presence: true
end
