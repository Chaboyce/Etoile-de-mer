class AddOldPricetoArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :oldprice, :decimal
  end
end
