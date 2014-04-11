json.array!(@tips) do |tip|
  json.extract! tip, :id, :news_tip, :date, :source, :reporter_following_up, :notes, :status
  json.url tip_url(tip, format: :json)
end
