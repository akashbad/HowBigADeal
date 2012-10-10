module DealerHelper
	require 'wikipedia'

	def how_big_a_deal_is(term)
		page = Wikipedia.find(term)
		if term.downcase.include? "akash" or term.downcase.include? "victor"
			return "#{term} is the biggest deal"
		end
		term = page.title
		unless page.content
			return "#{term} isn't even a deal"
		end
		length = page.content.length
		if page.categories.to_s.downcase.include? "disambiguation"
			return "#{term} might be a big deal, there are a lot of " +term.pluralize
		end
		case length
		when 0..5000
			return "#{term} is not that big a deal"

		when 5000..10000
			return "#{term} is sort of a big deal"

		when 10000..50000
			return "#{term} is a pretty big deal"

		when 50000.100000
			return "#{term} is a really big deal"
		else
			return "#{term} is a huge deal"
		end
	end
end
