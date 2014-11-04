#  Step 1 generate a deck of cards, shuffle it, deal it

class Card
	attr_reader :suit, :rank

	def self.suits
		["H", "D", "S", "C"]
	end

	def self.ranks
		[2,3,4,5,6,7,8,9,10, "J", "Q", "K", "A"]
	end

 def initialize(suit, rank)
 	@suit = suit
 	@rank = rank
 end
end

class Deck

def initialize(cards)
	@cards = []
	generate
end

	def generate
		Card.suits.each do |suit|
			Card.ranks.each do |rank|
				card = Card.new(suit, rank)
				@cards << card
			end
		end
	end

def shuggle
	@cards.shuffle!
  end
end

deck = Deck.new
deck 

class Game
end

end
