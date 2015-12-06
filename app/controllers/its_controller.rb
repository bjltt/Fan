class ItsController < ApplicationController
	def index
		@its=It.all
	end
end
