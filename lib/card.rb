# card.rb
# Sources:
# > Create a range array: https://stackoverflow.com/questions/11173173/create-array-of-n-items-based-on-integer-value
# > Check if integer is in a range: https://stackoverflow.com/questions/3505475/check-if-an-integer-is-within-a-range/18599494

class Card
  attr_reader :value, :suit

  SUITABLE_SUITS = [:hearts, :spades, :clubs, :diamonds]
  VALUABLE_VALUES = [*1..13]

  def initialize(value, suit)
    @value = value
    @suit = suit
    raise ArgumentError.new("Suit must be one of: #{SUITABLE_SUITS}, #{suit} not accepted") unless SUITABLE_SUITS.include?(suit)
    raise ArgumentError.new("Card must be 1-13 in value, #{value} not accepted") unless VALUABLE_VALUES.include?(value)
  end

  def to_s
    if @value.between?(2,10)
      return "#{value} of #{suit.to_s}"
    else
      case @value
      when 1
        return "ace of of #{suit.to_s}"
      when 11
        return "jack of #{suit.to_s}"
      when 12
        return "queen of #{suit.to_s}"
      when 13
        return "king of #{suit.to_s}"
      end
    end
  end

end
