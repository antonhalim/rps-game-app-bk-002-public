class RPSGame
class PlayTypeError < StandardError ; end

	attr_reader :choice, :computer_play
	@@rps = [:rock, :paper, :scissors]

	def initialize(choice)
		raise PlayTypeError if !@@rps.include?(choice)
		@choice = choice
		@computer_play = @@rps.sample
	end

	def self.valid_play?(choice)
		if @@rps.include?(choice) then return true else return false end
	end

	def won?
		if choice == :rock && computer_play == :scissors
			return true
		elseif choice == :scissors && computer_play == :paper
			return true
		elseif choice == :paper && computer_play == :rock
			return true
		else
			return false
		end
	end

	def tied?
		choice == computer_play
	end

	def lost?
		!won? && !tied?
	end
end
