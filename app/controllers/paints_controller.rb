class PaintsController < ApplicationController
   before_action :authenticate_user!

  def index
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
    @paint = Paint.find_by(id: params[:id])
  end

  def edit
    @paint = Paint.find_by(id: params[:id])
  end

  def update
       @paint = Paint.find_by(params[:id])
    if @paint.update(paint_params)
      flash[:notice] = "Paint successfully updated"
      redirect_to root_path
    else
      flash[:error] = "Error"
      render 'edit'
    end

  end

  def destroy
       @paint = Paint.find_by(id: params[:id])
    @paint.destroy
    redirect_to root_path
  end

private
  def paint_params
    params.require(:paint).permit(:user_id, :name, :description, :price, :picture, :category, :all_tegs)
  end

end
