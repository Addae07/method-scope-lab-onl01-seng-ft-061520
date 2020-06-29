require "spec_helper"

describe "#rescue_princess_peach" do
  it "outputs a message and sets a variable, status, that is not available outside of this method" do
    expect{rescue_princess_peach}.to output("Hooray! Mario has rescued Princess Peach.\n").to_stdout 
    expect{puts status}.to raise_error(NameError)
  end 
end 
require_relative "../lib/catch_phrase.rb"
require_relative "../lib/rescue_princess_peach.rb"
require 'pry'


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end