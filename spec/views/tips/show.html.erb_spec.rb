require 'spec_helper'

describe "tips/show" do
  before(:each) do
    @tip = assign(:tip, stub_model(Tip,
      :news_tip => "MyText",
      :source => "Source",
      :reporter_following_up => "Reporter Following Up",
      :notes => "MyText",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Source/)
    rendered.should match(/Reporter Following Up/)
    rendered.should match(/MyText/)
    rendered.should match(/Status/)
  end
end
