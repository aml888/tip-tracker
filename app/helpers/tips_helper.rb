module TipsHelper
	def shorten tip
		news_tip = tip.news_tip
		if params[:read_more].to_i == tip.id
			news_tip
		else
			truncate news_tip, length: 30, omission: "..."
		end
	end
		
end
