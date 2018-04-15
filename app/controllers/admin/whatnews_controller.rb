class Admin::WhatnewsController < Admin::AdminController
  before_action :authenticate_user!, except: [:index, :show]
  def new
    @whatnew = Whatnew.new
  end

  def edit
    @whatnew = Whatnew.find(params[:id])
  end

  def create
    @whatnew = Whatnew.new(whatnew_params)
     if @whatnew.save
      redirect_to @whatnew
    else
      render 'new'
    end
  end
  
  def update
    @whatnew = Whatnew.find(params[:id])

      if @whatnew.update(whatnew_params)
      redirect_to @whatnew
      else
        render 'edit'
      end
  end

  def destroy
    @whatnew = Whatnew.find(params[:id])

    @whatnew.destroy
    redirect_to whatnews_index_path
  end

  private
  
  def whatnew_params
    params.require(:whatnew).permit(:caption,:text,:tag, :imagenews)
  end
end
