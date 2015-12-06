class AutomotivesController < ApplicationController
	def index
		@automotives=Automotive.all
	end

	
end
