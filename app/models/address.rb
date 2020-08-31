class Address < ApplicationRecord
  belongs_to :shop, optional: true
  validates :zip_code, :prefecuture,:city, :local, presence: true
end
