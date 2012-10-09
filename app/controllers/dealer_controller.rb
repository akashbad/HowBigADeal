class DealerController < ApplicationController
	include DealerHelper

	def search
		unless params[:term] == ""
			@result = how_big_a_deal_is params[:term]
		end
		@term = params[:term]
	end
end
