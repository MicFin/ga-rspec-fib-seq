require 'spec_helper'
require_relative '../lib/fib'

describe "#fib" do

  it "should have a method called fib" do
    expect(method(:fib))
  end

   it "should have one required parameter called x" do
    parameters = method(:fib).parameters
    expect(parameters[0]).to include (:req)
    expect(parameters[0]).to include (:x)
    expect(parameters.length).to eq 1
   end

   it "should return fibonacci numbers" do
    expect(fib(1)).to eq 1
    expect(fib(2)).to eq 1
    expect(fib(3)).to eq 2
    expect(fib(4)).to eq 3
    expect(fib(5)).to eq 5
    expect(fib(6)).to eq 8
    end

  it "should raise an error when a non-number is passed as a parameter" do
    expect{fib("cat")}.to raise_error(ArgumentError)
    expect{fib(True)}.to raise_error(NameError)
    expect{fib([4, 5])}.to raise_error(NoMethodError)
  end

  it "should return a message when 0 is passed as a parameter" do
    expect(fib(0)).to eq "No zeroeth number"
    expect(fib(-0)).to eq "No zeroeth number"
  end

  it "should return a message when a negative number is passed as a parameter" do
    expect(fib(-3)).to eq "No negativith number in fib"
    expect(fib(-100)).to eq "No negativith number in fib"
  end

  it "should return a message when a decimal number is passed as a parameter" do
    expect(fib(0.3)).to eq "No 0.3th number in fib" 
    expect(fib(0.5)).to eq "No 0.5th number in fib"
    expect(fib(1.5)).to eq "No 1.5th number in fib"
  end

 end