class PagesController < ApplicationController
	before_action :find
  def index
  	@q = Paint.search(params[:q])
    @paint =  @q.result(distinct: true)    
  end
  private
  def find 
   @paint = Paint.find_by(id: params[:id])

  end
end
