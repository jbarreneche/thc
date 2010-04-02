require 'spec_helper'

describe "cultivos/edit.html.haml" do
  before(:each) do
    assign(:cultivo, @cultivo = stub_model(Cultivo,
      :new_record? => false,
      :nombre => "MyString"
    ))
  end

  it "renders the edit cultivo form" do
    render

    response.should have_selector("form", :action => cultivo_path(@cultivo), :method => "post") do |form|
      form.should have_selector("input#cultivo_nombre", :name => "cultivo[nombre]")
    end
  end
end
