require "spec_helper"

describe ChameleonSass do
  describe ".sass?" do
    context "when sass is defined" do
      it "will return :sass" do
        stub_const("Sass", double)
        expect(ChameleonSass.sass?).to eq :sass
      end
    end

    context "when sass is not defined" do
      it "will return false" do
        hide_const("Sass")
        expect(ChameleonSass.sass?).to be_falsey
      end
    end
  end

  describe ".compass?" do
    context "when compass is defined" do
      it "will return :compass" do
        stub_const("Compass", double)
        expect(ChameleonSass.compass?).to eq :compass
      end
    end

    context "when compass is not defined" do
      it "will return false" do
        hide_const("Compass")
        expect(ChameleonSass.compass?).to be_falsey
      end
    end
  end
end
