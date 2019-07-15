require('rspec')
require('queen-attack')

describe('Array') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([1, 3])).to(eq(true))
    expect([4,3].queen_attack?([2, 3])).to(eq(true))
    expect([4,5].queen_attack?([6, 7])).to(eq(true))
    expect([4,5].queen_attack?([6, 3])).to(eq(true))
    expect([4,5].queen_attack?([2, 7])).to(eq(true))
    expect([4,5].queen_attack?([0, 1])).to(eq(true))
  end

  it('is false if the coordinates are not horizontally or vertically in line with each other') do
    expect([1,1].rook_attack?([1, 3])).to(eq(true))
    expect([4,3].rook_attack?([2, 3])).to(eq(true))
  end

  it('is false if the coordinates are not horizontally or vertically in line with each other') do
    expect([4,5].bishop_attack?([6, 7])).to(eq(true))
    expect([4,5].bishop_attack?([6, 3])).to(eq(true))
    expect([4,5].bishop_attack?([2, 7])).to(eq(true))
    expect([4,5].bishop_attack?([0, 1])).to(eq(true))
  end

  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].king_attack?([1, 2])).to(eq(true))
    expect([4,3].king_attack?([3, 3])).to(eq(true))
    expect([1,1].king_attack?([2, 2])).to(eq(true))
    expect([1,1].king_attack?([0, 0])).to(eq(true))
    expect([1,1].king_attack?([0, 2])).to(eq(true))
    expect([1,1].king_attack?([2, 0])).to(eq(true))
  end

  it('is false if the coordinates are not horizontally or vertically in line with each other') do
    expect([4,0].knight_attack?([5, 2])).to(eq(true))
    expect([4,0].knight_attack?([3, 2])).to(eq(true))
    expect([3,3].knight_attack?([5, 2])).to(eq(true))
    expect([3,3].knight_attack?([1, 2])).to(eq(true))
  end
end
