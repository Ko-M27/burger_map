class Shop < ApplicationRecord
  has_many :images, dependent: :destroy
  has_many :reviews
  belongs_to :user
  belongs_to :address
  validates :name, :text, presence: true
end
