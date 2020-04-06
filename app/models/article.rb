class Article < ApplicationRecord
  has_many_attached :photo, dependent: :destroy
  belongs_to :categorie
  validates :name, :categorie, :price, presence: true
end
