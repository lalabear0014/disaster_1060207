class Event < ApplicationRecord

	validates_presence_of :title

	has_many :messages

end
