class Tip < ActiveRecord::Base
	scope :in_progress, -> { where status: 'In progress'}
	scope :source_a, -> { where source: 'A'}
	
end
