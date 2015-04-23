require('rspec')
require('allergies')
require('pry')

describe('Fixnum#allergies') do
  it('Accepts a score of 1 and returns an array containing "eggs"') do
    expect(1.allergies()).to(eq(["eggs"]))
  end

  it('Accepts any positive score below 256 and returns an array containing all matching allergies') do
    expect(129.allergies()).to(eq(["eggs", "cats"]))
  end

end
