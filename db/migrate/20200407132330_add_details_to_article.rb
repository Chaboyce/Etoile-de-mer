class AddDetailsToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :dimensions, :text
    add_column :articles, :matiere, :text
    add_column :articles, :conseil, :text
  end
end
