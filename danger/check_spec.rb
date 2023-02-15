require_relative 'check'

describe Check do

   context "pr_description_valid?" do

      it "pr title is good" do
        title = "My small PR description"
        expect(Check.pr_description_valid?(title)).to be true
      end

      it "pr title is wrong" do
        title = "_PR Template file content_"
        expect(Check.pr_description_valid?(title)).to be false
      end
   end

  context "swiftlint_disabled" do

    it "swiftlint_disabled contains in line" do
      diff = "swiftlint:disable"
      expect(Check.swiftlint_disabled?(diff)).to eq(false)
    end

    it "swiftlint_disabled is not found" do
      diff = "some random text"
      expect(Check.swiftlint_disabled?(diff)).to eq(false)
    end

    it "swiftlint_disabled all added" do
      diff = "+ // swiftlint:disable all"
      expect(Check.swiftlint_disabled?(diff)).to eq(true)
    end

    it "swiftlint_disabled clean" do
      diff = "- // swiftlint:disable all"
      expect(Check.swiftlint_disabled?(diff)).to eq(false)
    end

  end


end
