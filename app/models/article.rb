class Article < ApplicationRecord
  CATEGORIES = %w(Sacs Hauts Robes Kimonos other)
  has_many_attached :photo, dependent: :destroy
  validates :name, :price, presence: true
  validates :categorie, :inclusion=> { :in => CATEGORIES }, allow_nil: true
end
