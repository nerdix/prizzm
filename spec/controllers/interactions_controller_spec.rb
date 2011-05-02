require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe InteractionsController do

  def mock_interaction(stubs={})
    @mock_interaction ||= mock_model(Interaction, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all interactions as @interactions" do
      Interaction.stub(:all) { [mock_interaction] }
      get :index
      assigns(:interactions).should eq([mock_interaction])
    end
  end

  describe "GET show" do
    it "assigns the requested interaction as @interaction" do
      Interaction.stub(:find).with("37") { mock_interaction }
      get :show, :id => "37"
      assigns(:interaction).should be(mock_interaction)
    end
  end

  describe "GET new" do
    it "assigns a new interaction as @interaction" do
      Interaction.stub(:new) { mock_interaction }
      get :new
      assigns(:interaction).should be(mock_interaction)
    end
  end

  describe "GET edit" do
    it "assigns the requested interaction as @interaction" do
      Interaction.stub(:find).with("37") { mock_interaction }
      get :edit, :id => "37"
      assigns(:interaction).should be(mock_interaction)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created interaction as @interaction" do
        Interaction.stub(:new).with({'these' => 'params'}) { mock_interaction(:save => true) }
        post :create, :interaction => {'these' => 'params'}
        assigns(:interaction).should be(mock_interaction)
      end

      it "redirects to the created interaction" do
        Interaction.stub(:new) { mock_interaction(:save => true) }
        post :create, :interaction => {}
        response.should redirect_to(interaction_url(mock_interaction))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved interaction as @interaction" do
        Interaction.stub(:new).with({'these' => 'params'}) { mock_interaction(:save => false) }
        post :create, :interaction => {'these' => 'params'}
        assigns(:interaction).should be(mock_interaction)
      end

      it "re-renders the 'new' template" do
        Interaction.stub(:new) { mock_interaction(:save => false) }
        post :create, :interaction => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested interaction" do
        Interaction.stub(:find).with("37") { mock_interaction }
        mock_interaction.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :interaction => {'these' => 'params'}
      end

      it "assigns the requested interaction as @interaction" do
        Interaction.stub(:find) { mock_interaction(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:interaction).should be(mock_interaction)
      end

      it "redirects to the interaction" do
        Interaction.stub(:find) { mock_interaction(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(interaction_url(mock_interaction))
      end
    end

    describe "with invalid params" do
      it "assigns the interaction as @interaction" do
        Interaction.stub(:find) { mock_interaction(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:interaction).should be(mock_interaction)
      end

      it "re-renders the 'edit' template" do
        Interaction.stub(:find) { mock_interaction(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested interaction" do
      Interaction.stub(:find).with("37") { mock_interaction }
      mock_interaction.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the interactions list" do
      Interaction.stub(:find) { mock_interaction }
      delete :destroy, :id => "1"
      response.should redirect_to(interactions_url)
    end
  end

end
