require "rails_helper"

describe Member do
  it "exists" do
    attrs = {
      name: "Bob",
      allies: "Good People",
      enemies: "Bad People",
      affiliation: "Tree Nation"
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq("Bob")
    expect(member.allies).to eq("Good People")
    expect(member.enemies).to eq("Bad People")
    expect(member.affiliation).to eq("Tree Nation")
  end
end