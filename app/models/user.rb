class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :items,dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :destinations, dependent: :destroy
  has_one :card, dependent: :destroy
  has_one :user_profile, dependent: :destroy
  has_many :favorites, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
