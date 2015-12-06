class CateringsController < ApplicationController
	def index
		@caterings=Catering.all
	end
end
