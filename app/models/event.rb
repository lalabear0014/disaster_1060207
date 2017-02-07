class Event < ApplicationRecord

	validates_presence_of :title

	has_many :messages
	belongs_to :category

	delegate :name, :to => :category, :prefix => true, :allow_nil => true

end
