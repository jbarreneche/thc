require 'spec_helper'

describe "cultivos/show.html.haml" do
  before(:each) do
    assign(:cultivo, @cultivo = stub_model(Cultivo,
      :nombre => "MyString"
    ))
  end

  it "renders attributes in <p>" do
    render
    response.should contain("MyString")
  end
end
