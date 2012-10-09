class DealerController < ApplicationController
	include DealerHelper
	def home
	end

	def search
		@result, @term = how_big_a_deal_is params[:term]
		# @result = "Hooray"
	end
end
