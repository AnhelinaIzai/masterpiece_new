class UserparamsController < ApplicationController
before_action :authenticate_user!
before_action :find , only:[:show, :edit, :update]
  def new
    @userparam = Userparam.new
  end
  
  def create
    @userparam = current_user.build_userparam(profile_params)
    if @userparam.save
      redirect_to userparam_path(@userparam.id)
    end
    
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @userparam.update(profile_params)
       redirect_to userparam_path(@userparam.id)
    end
    
  end
  
private

  def profile_params
    params.require(:userparam).permit(:user_id, :email, :firstname, :lastname, :place, :avatar)
  end
  def find
    @userparam = Userparam.find_by(params[:id])
  end
end

