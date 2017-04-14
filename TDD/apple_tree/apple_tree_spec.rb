require_relative 'apple_tree'
RSpec.describe Apple do
  before(:each) do
    @apple = Apple.new
  end

  it "height only has a getter with no setter" do
      expect(@apple.height).to eq(10)
  end

  it "height only has a getter with no setter" do
      expect{ @apple.height = 1 }.to raise_error(NoMethodError)
    end

    it "count only has a getter with no setter" do
        expect(@apple.count).to eq(0)
    end
  it "count only has a getter with no setter" do
      expect{ @apple.count = 1 }.to raise_error(NoMethodError)
    end

  context "should have a method year_gone_bye " do
    before(:each) do
      @apple.year_gone_bye
    end

    it "adds one year to age attribute" do
      expect(@apple.age).to eq(1)
    end
    it "it increases the height by 10%" do
      expect(@apple.height).to eq(11)
    end
    context "increase the apple count by 2 within the range" do
      it "should not increase if the age is less the 3" do
        2.times { @apple.year_gone_bye }
         expect(@apple.count).to eq(0)
      end
      it "should increase if the age is between 4-10" do
        4.times {@apple.year_gone_bye}
        expect(@apple.count).to eq(4)
      end
      it "should not grow apples if its older than 10" do
        10.times{@apple.year_gone_bye}
        expect(@apple.count).to eq(14)
      end
    end
    it "should pick all the apples when the method is run" do
      @apple.pick_apples
      expect(@apple.pick_apples).to eq(0)
    end

  end



end
