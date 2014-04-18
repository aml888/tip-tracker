module TipsHelper
	def shorten tip
		tip = tip.news_tip
		if params[:read_more].to_i == tip.id
			tip
		else
			truncate tip, length: 30, omission: "..."
		end
	end
		
end
