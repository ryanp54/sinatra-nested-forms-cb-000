require_relative 'ship'

class Pirate
	attr_accessor :name, :height, :weight 
	@@pirates = []

	def initialize(name, weight, height)
		@name = name
		@height = height
		@weight = weight
		@@pirates << self
	end

	def self.all
		@@pirates
	end

end