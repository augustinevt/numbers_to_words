require('rspec')
require('number_to_word.rb')

describe('String#number_to_word') do

  # it("given a number input longer than three digits, it returns numbers in groups of three digits") do
  #   expect("234564789".number_to_word()).to(eq(["234","564","789"]))
  # end

  it('given input 200 it should return two hundred') do
    expect("200".number_to_word()).to(eq('two hundred'))
  end

  it('given input 215 it should return "two hundred fifteen"') do
    expect("215".number_to_word()).to(eq('two hundred fifteen'))
  end

  it('given input 340 it should return "three hundred forty"') do
    expect("340".number_to_word()).to(eq('three hundred forty'))
  end

  it('given input 343 it should return "three hundred forty three"') do
    expect("343".number_to_word()).to(eq('three hundred forty three'))
  end

  it('correctly formats six digit number (given 654211 should return six hundred fifty four thousand two hundred eleven)') do
    expect("654211".number_to_word()).to(eq('six hundred fifty four thousand two hundred eleven'))
  end

  it('correctly formats nine digit number (given 654343345 should return six hundred fifty four million three hundred forty three thousand three hundred forty five)') do
    expect("654343345".number_to_word()).to(eq('six hundred fifty four million three hundred forty three thousand three hundred forty five'))
  end




end
