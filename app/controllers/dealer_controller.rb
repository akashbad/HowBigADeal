class DealerController < ApplicationController
	include DealerHelper

	respond_to :html, :xml, :json, :js

	def search
		unless params[:term].nil? or params[:term] == ""
			@result = how_big_a_deal_is params[:term]
		end
		@term = params[:term]
		respond_to do |format|
			format.html
			format.js {render partial: 'layouts/results', locals: {results: @results}, content_type: 'text/html' }
		end
	end
end
