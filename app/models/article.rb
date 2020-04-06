class Article < ApplicationRecord
  THEMES = %w(Sacs Hauts Robes Kimonos other)
  has_one_attached :photo, dependent: :destroy
  validates :name, :price, presence: true
  validates :categorie, :inclusion=> { :in => CATEGORIES }, allow_nil: true
end
