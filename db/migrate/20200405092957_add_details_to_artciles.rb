class AddDetailsToArtciles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :categorie, :string
    add_column :articles, :price, :decimal
  end
end
