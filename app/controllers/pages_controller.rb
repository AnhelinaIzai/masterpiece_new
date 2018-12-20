class PagesController < ApplicationController
  def index
  	@paints = Paint.all
  end
end
