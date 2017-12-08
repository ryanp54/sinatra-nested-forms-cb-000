require_relative 'ship'

class Pirate
	attr_accessor :name, :height, :weight
	attr_reader :ships
	@@pirates = []

	def initialize(params)
		@name = params[:name]
		@height = params[:height]
		@weight = params[:weight]
		
		@ships = []
		params[:ships].each do |ship|
			@ships << Ship.new(ship)
		end

		@@pirates << self
	end

	def self.all
		@@pirates
	end

end