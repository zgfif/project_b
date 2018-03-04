class WhatnewsController < ApplicationController
  # before_action :authenticate_user!, except: [:index, :show]
  def index
    @whatnews = Whatnew.all
  end

  def show
    @whatnew = Whatnew.find(params[:id])
  end
end
