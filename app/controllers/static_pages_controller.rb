class StaticPagesController < ApplicationController
	before_action :authenticate_user!, :only => [:create, :new]

	def index
	end
end
