class DealerController < ApplicationController
	include DealerHelper

	respond_to :html, :xml, :json, :js

	def search
		unless params[:term].nil? or params[:term] == ""
			@result = how_big_a_deal_is params[:term]
		end
		@term = params[:term]
		data = []
		data << @term
		data << @result
		respond_to do |format|
			format.html
			format.js {render json: data}
		end
	end
end
