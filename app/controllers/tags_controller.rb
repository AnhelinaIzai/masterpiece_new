class TagsController < ApplicationController
	def show
		@tag = Tag.find_by(name: params[:id])
		@paints = @tag.paints
	end
end
