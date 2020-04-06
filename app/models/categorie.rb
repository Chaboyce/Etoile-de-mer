class Categorie < ApplicationRecord
  has_one_attached :photo, dependent: :destroy
  has_many :articles, dependent: :destroy
   validates :name, uniqueness: true, presence: true
end
