require File.expand_path('../../lib/plateau', __FILE__)

class App
  def initialize(type, input = "")
    @type = type
    @input = input
  end

  def run
    if @type == :batch
      plateau = Plateau.new @input
    else
      input = STDIN.read
      puts input
      plateau = Plateau.new input
    end

    plateau.move_rovers

    puts plateau
  end
end