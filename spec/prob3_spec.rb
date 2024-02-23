require 'prob3'

RSpec.describe StringWrapper do
  let(:string) {StringWrapper.new("apple")}

  describe "#reverse" do
    it "reverses the string" do
      expect(string.reverse).to eq("elppa")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(string.upcase).to eq("APPLE")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      string_2 = StringWrapper.new("PANDA")
      expect(string_2.downcase).to eq("panda")
    end
  end
end
