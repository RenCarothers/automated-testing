# deck.rb
# Sources:
# Delete an item in array: https://programmingresources.fandom.com/wiki/Ruby-_Remove_Elements_From_An_Array

require_relative 'card'

class Deck

  attr_accessor :deck

  def initialize
    deck_array_of_card_instances = []
    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        card = Card.new(value, suit)
        deck_array_of_card_instances << card
      end
    end
    @deck = deck_array_of_card_instances
  end

  def draw
    # returns a card
    drawn_card = @deck[1].dup
    @deck.delete_at(1)
    return drawn_card
  end

  def shuffle
    # shuffles the deck
    @deck.shuffle!
  end

  def count
    return @deck.length
  end
end