require('rspec')
require('pingpong')

describe('Fixnum#pingpong') do
  it('counts from 1 to a given number') do
    expect((2).pingpong()).to(eq([1, 2]))
  end
  it('converts negative numbers to their absolute value') do
    expect((-2).pingpong()).to(eq([1, 2]))
  end
  it('replaces any number divisible by 3 with "ping"') do
    expect((3).pingpong()).to(eq([1, 2, "ping"]))
  end
  it('replaces any number divisible by 5 with "pong"') do
    expect((5).pingpong()).to(eq([1, 2, "ping", 4, "pong"]))
  end
  it('replaces any number divisible by 15 with "ping-pong"') do
    expect((15).pingpong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping-pong"]))
  end
end
