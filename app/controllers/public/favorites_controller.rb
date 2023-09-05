class Public::FavoritesController < ApplicationController

  def create
    school = School.find(params[:school_id])
    favorite = current_user.favorites.new(school_id: school.id)
    favorite.save
    redirect_back(fallback_location: root_path)
  end

  def index
  end

  def destroy
    school = School.find(params[:school_id])
    favorite = Favorite.find_by(school_id: school.id)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
