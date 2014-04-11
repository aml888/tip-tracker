require 'spec_helper'

describe "tips/index" do
  before(:each) do
    assign(:tips, [
      stub_model(Tip,
        :news_tip => "MyText",
        :source => "Source",
        :reporter_following_up => "Reporter Following Up",
        :notes => "MyText",
        :status => "Status"
      ),
      stub_model(Tip,
        :news_tip => "MyText",
        :source => "Source",
        :reporter_following_up => "Reporter Following Up",
        :notes => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of tips" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Reporter Following Up".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
