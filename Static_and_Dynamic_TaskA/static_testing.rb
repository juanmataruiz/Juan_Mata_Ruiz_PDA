### Testing task A code:

# Carry out Static testing on the code below.
# Correct the errors below that you spotted in task 1.

class CardGame

  def initialize(suit, value)
    @suit = suit
    @value = value;
  end

  def checkforAce(card)
    if card.value = 1 ## It should --if card.value == 1.
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) ## dif inseatd of def, and missing a comma between card1 and card2.
  if card1.value > card2.value
    return card.name ## It should be --card1.value
  else
    card2 ## It should be --card2.value
  end
end
end ## extra end

def self.cards_total(cards)
  total ## Missing the value, it should be --total = 0.
  for card in cards
    total += card.value
    return "You have a total of" + total ## the object total is an interpolation, it should be --#{total}.
  end
end
