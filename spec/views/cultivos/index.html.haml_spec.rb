require 'spec_helper'

describe "cultivos/index.html.haml" do
  before(:each) do
    assign(:cultivos, [
      stub_model(Cultivo,
        :nombre => "MyString"
      ),
      stub_model(Cultivo,
        :nombre => "MyString"
      )
    ])
  end

  it "renders a list of cultivos" do
    render
    response.should have_selector("tr>td", :content => "MyString".to_s, :count => 2)
  end
end
