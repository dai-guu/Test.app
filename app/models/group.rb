class Group < ApplicationRecord
  attachment :image

  has_many :group_users
  has_many :users, through: :group_users
  # belongs_to :user

  # validates :name, presence: true
  # validates :introduction, presence: true

end
