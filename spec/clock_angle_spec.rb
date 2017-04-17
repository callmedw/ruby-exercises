require('rspec')
require('clock_angle')

describe('String#get_angle') do
  it('returns the total numerical value in minutes of the current time') do
    expect("12:45".get_angle()).to(eq(765.0))
  end
end
