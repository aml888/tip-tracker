class Tip < ActiveRecord::Base
	has_many :assignments
	has_many :reporters, through: :assignments
	scope :in_progress, -> { where status: 'In progress'}
	scope :source_a, -> { where source: 'A'}
	
	
end
