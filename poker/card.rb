#  Step 1 generate a deck of cards, shuffle it, deal it

class Card
	attr_reader :suit, :rank

	def initialize(suit, rank)
 		@suit = suit
 		@rank = rank
	end


	def to_s
		"#{rank}#{suit}"
	end

end
