class PaintsController < ApplicationController
   before_action :authenticate_user!
before_action :find, only:[:show, :edit, :update, :destroy]
  def index
    @q = Paint.search(params[:q])
    @paint =  @q.result(distinct: true)    
  end

  def new
    @paint = Paint.new
  end

  def create
    @paint = current_user.paints.build(paint_params)
      if @paint.save
       redirect_to root_path
      else
        render 'new'
      end
  end


  def show
    @userparam = Userparam.find_by(params[:id])
  end

  def edit
  end

  def update
    if @paint.update(paint_params)
      flash[:notice] = "Paint successfully updated"
      redirect_to root_path
    else
      flash[:error] = "Error"
      render 'edit'
    end

  end

  def destroy
    @paint.destroy
    redirect_to root_path
  end

private
  def paint_params
    params.require(:paint).permit(:user_id, :name, :description, :price, :picture, :category_id)
  end
  def find
    @paint = Paint.find_by(id: params[:id])
  end

end
