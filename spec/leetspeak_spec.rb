require('rspec')
require('leetspeak')

describe('String#leetspeak') do
  it('returns a string as is when no Leetspeak rules apply') do
    expect("happy".leetspeak()).to(eq("happy"))
  end
  it('replaces every "e" in a string with a "3"') do
    expect("elephant".leetspeak()).to(eq("3l3phant"))
  end
  it('maintains string capitalization, ignores case when checking for leetspeak rules') do
    expect("EVery".leetspeak()).to(eq("3V3ry"))
  end
  it('replaces every "o" in a string with a "0"') do
    expect("open".leetspeak()).to(eq("0p3n"))
  end
  it('replaces every "I" in a string with a "1"') do
    expect("IkeiA".leetspeak()).to(eq("1k3iA"))
  end
  it('replaces every "s" in a string with "z"') do
    expect("roses".leetspeak()).to(eq("r0z3z"))
  end
  it('does NOT replace the first letter when it is an s') do
    expect("sassafrass".leetspeak()).to(eq("sazzafrazz"))
  end
  it('replaces letters correctly in a string of words') do
    expect("I scream you scream we all scream for raspberry ice cream SELLS.".leetspeak).to(eq("1 scr3am y0u scr3am w3 all scr3am f0r razpb3rry ic3 cr3am S3LLZ."))
  end
end
