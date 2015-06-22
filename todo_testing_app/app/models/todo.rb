class Todo < ActiveRecord::Base
	validates :item, presence: true
end
