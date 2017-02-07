class Event < ApplicationRecord

	validates_presence_of :title

	has_many :messages
	belongs_to :category

end
