require "rails_helper"

RSpec.describe Category do
  it "is valid with a name" do
    cat_sports = build_stubbed(:category_sports, name: "sports")
    expect(cat_sports).to be_valid
  end

  it "is invalid without a name" do
    cat_sports = build_stubbed(:category_sports, name: " ")
    expect(cat_sports).not_to be_valid
  end

  it { should validate_uniqueness_of(:name) } 

  it "should be invalid with a long name" do
    cat_sports = build_stubbed(:category_sports, name: "a" * 26)
    expect(cat_sports).not_to be_valid
  end

  it "should be invalid with a short name" do
    cat_sports = build_stubbed(:category_sports, name: "aa" )
    expect(cat_sports).not_to be_valid
  end

end
