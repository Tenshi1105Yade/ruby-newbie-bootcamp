require_relative 'card.rb'

# Poker Hand Evaluation
# TODO: Basically, extend this class (you can create another class, of course!)
class Hand
  attr_reader :cards, :rank
   
  def initialize(draw_cards)
    @cards = draw_cards.map { |str| Card.new(str) }
    @rank = categorize
  end

  private
  
 
  def categorize
      cnt1 = 0
      cnt2 = 0
      cnt3 = 0
    @cards.each do |card|
      if card.suit == @cards[0].suit
        cnt1=cnt1+1
      end
      if card.face == @cards[0].face
        cnt2=cnt2+1
      end
      
      h = 0
       while h <= 4 do
         if card.face == @cards[h].face
           cnt3=cnt3+1
         end    
        h = h + 1
       end
    end

    if cnt1==5
      'flush'
    elsif cnt2==4
      'four-of-a-kind'
    elsif cnt2==3
      'three-of-a-kind'
    elsif cnt3==9
      'two-pair'
    elsif cnt3 == 13
      'full-house'
    elsif cnt2==2
      'one-pair'
      
    else
      'high-card'
    end

     
     
     
     
     
     
     
     
     
  

  end
    
end
