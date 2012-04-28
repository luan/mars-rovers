require 'enumerator'
require File.expand_path('../rover', __FILE__)

class Plateau
  attr_reader :height, :width, :rovers

	def initialize(input)
    @attributes = input.split
    @rovers = []

    parse_plateau
    parse_rovers
	end

  def move_rovers
    @rovers.each &:move
  end

  def to_s
    strings = @rovers.each(&:to_s).join("\n")
  end

  def in_bounds?(x, y)
    x >= 0 and x <= @width and
    y >= 0 and y <= @height
  end

  private

  def parse_plateau
    @height = @attributes.shift.to_i
    @width = @attributes.shift.to_i
  end

  def parse_rovers
    @attributes.each_slice(4) do |x, y, face, steps|
      @rovers << Rover.new([x, y, face, steps], self)
    end
  end
end
