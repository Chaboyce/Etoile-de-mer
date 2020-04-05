class Article < ApplicationRecord
  has_one_attached :photo, dependent: :destroy
  validates :name, :price, :categorie, presence: true
end
