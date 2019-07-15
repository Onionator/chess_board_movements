require('rspec')
require('queen-attack')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([1, 3])).to(eq(true))
    expect([4,3].queen_attack?([2, 3])).to(eq(true))
    expect([4,5].queen_attack?([6, 7])).to(eq(true))
    expect([4,5].queen_attack?([6, 3])).to(eq(true))
    expect([4,5].queen_attack?([2, 7])).to(eq(true))
    expect([4,5].queen_attack?([0, 1])).to(eq(true))
  end
end
