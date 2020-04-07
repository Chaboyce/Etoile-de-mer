class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:home, :show]

  def home
  @categories = Categorie.all
  authorize @categories
  end

end
