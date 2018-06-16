
    require_relative '../dynamic_testing.rb'
    require_relative '../card.rb'
    require 'minitest/autorun'
    require('minitest/rg')

    class TestCard < MiniTest::Test

      def setup
        @card1 = Card.new("One", 1)
        @card2 = Card.new("Two", 2)
        @card_game = CardGame.new
        @cards = [@card1, @card2]
      end

      def test_check_for_ace__True
        assert_equal(false, @card_game.check_for_ace(@card1))
      end

      def test_check_for_ace__False
        assert_equal(true, @card_game.check_for_ace(@card2))
      end

      def test_highest_card
        assert_equal(3, @card_game.highest_card(@card2, @card1))
      end

      def test_cards_total
        assert_equal("You have a total of 3", CardGame.cards_total(@cards))
      end
    end




#n
