require "enumerator"

Card = Struct.new(:face, :suit)

class Hand
	FACE_ORDER = %w{A K Q J T 9 8 7 6 5 4 3 2}
	HAND_ORDER = [ "Royal Flush","Straight Flush", "Four of a Kind", "Full House", "Flush", "Straight", "Three of a Kind",
		"Two Pair", "Pair", "High Card" ] 

# the available orderings for cards in a hand
:suit => lambda { |c, all| c.suit },
:high => lambda { |c, all| FACE_ORDER.index(c.face) }, :face_count => lambda do |c, all|
0 - all.find_all { |o| o.face == c.face }.size end,
:suit_count => lambda do |c, all|
0 - all.find_all { |o| o.suit == c.suit }.size
end }
ORDERS = {
def initialize( cards )
@cards = cards
@name = nil # cache for hand lookup, so we only do it once
end
def order( *by )
@cards = @cards.sort_by { |card| by.map { |e| ORDERS[e][card, @cards] } }
end
def hand
return nil if @cards.size < 7
@name ||= HAND_ORDER.find { |hand| send(hand.downcase.tr(" ", "_") + "?") }
end end
