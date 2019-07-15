require('pry')

# class Queen
#   def position
#     @position = [1,1]
#   end
#
#   def queen_attack(move)
#     if self.position[0] == move[0] || self.position[1] == move[1]
#       true
#     end
#   end
# end
#
# queen = Queen.new()
# queen.queen_attack()

class Array
  def queen_attack?(move)
    if self[0] == move[0] || self[1] == move[1] || (move[0] - self[0]).abs == (move[1] - self[1]).abs
      true
    end
  end
end
