require('rspec')
require('number_to_word.rb')

describe('String#number_to_word') do
  it("given a number input longer than three digits, it returns numbers in groups of three digits") do
    expect("234564789".number_to_word()).to(eq(["234","564","789"]))
  end

end
