module DealerHelper
	require 'wikipedia'

	def how_big_a_deal_is(term)
		page = Wikipedia.find(term)
		term = page.title
		unless page.content
			return "#{term} isn't a big deal at all"
		end
		length = page.content.length
		case length
		when 0..5000
			return "#{term} is not that big a deal", term.to_s
		when 5000..10000
			return "#{term} is sort of a big deal", term.to_s

		when 10000..50000
			return "#{term} is a pretty big deal", term.to_s

		when 50000.100000
			return "#{term} is a really big deal", term.to_s
		else
			return "#{term} is a huge deal", term.to_s
		end
	end
end
