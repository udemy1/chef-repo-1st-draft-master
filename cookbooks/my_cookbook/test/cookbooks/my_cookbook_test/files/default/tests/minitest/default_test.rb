require 'minitest/spec'

describe_recipe 'my_cookbook::default' do

  describe "greeting file" do

    it "creates the greeting file" do
      file("/tmp/greeting.txt").must_exist
    end

    it "contains what's stored in the 'greeting' node attribute" do
      file('/tmp/greeting.txt').must_include 'Ohai, Minitest!'
    end
  end
end