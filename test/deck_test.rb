require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases

  # TODO: Ran out of time but wanted to test/create code for: >>
  # account for if attempts to draw when no cards left
  # account for if attempts to shuffle one card

  describe "You can create a Deck instance" do

    it "Can be created" do
      sample_deck = Deck.new
      expect(sample_deck).must_be_instance_of Deck
    end

    it "Contains 52 cards" do
      sample_deck = Deck.new
      expect(sample_deck.deck.length).must_equal 52
    end

    it "Contains suits of 13" do
      sample_deck = Deck.new
      array_of_diamonds = sample_deck.deck.find_all { |card| card.suit == :diamonds }
      expect(array_of_diamonds.length).must_equal 13
    end

    # also wanted to figure out how to check that it made 4 suits, but ran out of time
  end

  describe ".shuffle" do

    it "Can be called" do
      sample_deck = Deck.new
      expect(sample_deck).must_respond_to :shuffle
    end
  end

  describe ".draw" do

    it "Removes a card" do
      sample_deck = Deck.new
      sample_deck.draw
      expect(sample_deck.deck.length).must_equal 51
    end

    it "Returns a card" do
      sample_deck = Deck.new
      expect(sample_deck.draw).must_be_instance_of Card
    end
  end

  describe ".count" do

    it "Counts" do
      sample_deck = Deck.new
      expect(sample_deck.count).must_equal 52
    end
  end
end
