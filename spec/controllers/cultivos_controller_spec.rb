require 'spec_helper'

describe CultivosController do

  def mock_cultivo(stubs={})
    @mock_cultivo ||= mock_model(Cultivo, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all cultivos as @cultivos" do
      Cultivo.stub(:all) { [mock_cultivo] }
      get :index
      assigns(:cultivos).should eq([mock_cultivo])
    end
  end

  describe "GET show" do
    it "assigns the requested cultivo as @cultivo" do
      Cultivo.stub(:find).with("37") { mock_cultivo }
      get :show, :id => "37"
      assigns(:cultivo).should be(mock_cultivo)
    end
  end

  describe "GET new" do
    it "assigns a new cultivo as @cultivo" do
      Cultivo.stub(:new) { mock_cultivo }
      get :new
      assigns(:cultivo).should be(mock_cultivo)
    end
  end

  describe "GET edit" do
    it "assigns the requested cultivo as @cultivo" do
      Cultivo.stub(:find).with("37") { mock_cultivo }
      get :edit, :id => "37"
      assigns(:cultivo).should be(mock_cultivo)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created cultivo as @cultivo" do
        Cultivo.stub(:new).with({'these' => 'params'}) { mock_cultivo(:save => true) }
        post :create, :cultivo => {'these' => 'params'}
        assigns(:cultivo).should be(mock_cultivo)
      end

      it "redirects to the created cultivo" do
        Cultivo.stub(:new) { mock_cultivo(:save => true) }
        post :create, :cultivo => {}
        response.should redirect_to(cultivo_url(mock_cultivo))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cultivo as @cultivo" do
        Cultivo.stub(:new).with({'these' => 'params'}) { mock_cultivo(:save => false) }
        post :create, :cultivo => {'these' => 'params'}
        assigns(:cultivo).should be(mock_cultivo)
      end

      it "re-renders the 'new' template" do
        Cultivo.stub(:new) { mock_cultivo(:save => false) }
        post :create, :cultivo => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested cultivo" do
        Cultivo.should_receive(:find).with("37") { mock_cultivo }
        mock_cultivo.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :cultivo => {'these' => 'params'}
      end

      it "assigns the requested cultivo as @cultivo" do
        Cultivo.stub(:find) { mock_cultivo(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:cultivo).should be(mock_cultivo)
      end

      it "redirects to the cultivo" do
        Cultivo.stub(:find) { mock_cultivo(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(cultivo_url(mock_cultivo))
      end
    end

    describe "with invalid params" do
      it "assigns the cultivo as @cultivo" do
        Cultivo.stub(:find) { mock_cultivo(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:cultivo).should be(mock_cultivo)
      end

      it "re-renders the 'edit' template" do
        Cultivo.stub(:find) { mock_cultivo(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested cultivo" do
      Cultivo.should_receive(:find).with("37") { mock_cultivo }
      mock_cultivo.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the cultivos list" do
      Cultivo.stub(:find) { mock_cultivo(:destroy => true) }
      delete :destroy, :id => "1"
      response.should redirect_to(cultivos_url)
    end
  end

end
