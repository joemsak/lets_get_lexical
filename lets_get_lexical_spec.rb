require 'rspec'
require_relative 'lets_get_lexical'

describe Lexical do
  let(:file) { File.open('text.txt') }

  before :each do
    @lexy = Lexical.new(file)
  end

  it "counts total words in a document" do
    @lexy.word_count.should == 25
  end

  it "counts the total unique words in a document" do
    @lexy.unique_word_count.should == 20
  end

  it "returns the lexical density of a document" do
    @lexy.lexical_density.should == 80
  end
end
