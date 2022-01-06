class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  has_many :lists
  has_many :group_users   #中間テーブル！
  has_many :groups, through: :group_users
  # has_many :owned_groups, class_name: "Group"
  # has_many :favorites, dependent: :destroy
  # has_many :book_comments, dependent: :destroy
  attachment :profile_image

  validates :name, length: { minimum: 2, maximum: 20 }, uniqueness: true
  validates :introduction, length: { maximum: 50 }

end

