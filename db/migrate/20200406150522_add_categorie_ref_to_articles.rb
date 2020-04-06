class AddCategorieRefToArticles < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :categorie, foreign_key: true
  end
end
