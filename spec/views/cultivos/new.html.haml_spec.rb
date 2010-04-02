require 'spec_helper'

describe "cultivos/new.html.haml" do
  before(:each) do
    assign(:cultivo, stub_model(Cultivo,
      :new_record? => true,
      :nombre => "MyString"
    ))
  end

  it "renders new cultivo form" do
    render

    response.should have_selector("form", :action => cultivos_path, :method => "post") do |form|
      form.should have_selector("input#cultivo_nombre", :name => "cultivo[nombre]")
    end
  end
end
