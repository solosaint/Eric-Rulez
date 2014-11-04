module RubyCards

    include Comparable

    CLUB    = 'C'
    DIAMOND = 'D'
    HEART   = 'H'
    SPADE   = 'S'

    class Deck
    	def initialize
    		@cards = []
    		Card::SUITS.each_byte do | 