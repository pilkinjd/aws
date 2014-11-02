require "rails_helper"

describe ApplicationHelper do
  describe "#yes_no" do
    it "returns the OK icon if true" do
      expect(helper.yes_no(true)).to eq("<span class='glyphicon glyphicon-ok'></span>")
    end

    it "returns the REMOVE icon if false" do
      expect(helper.yes_no(false)).to eq("<span class='glyphicon glyphicon-remove'></span>")
    end
  end
end
