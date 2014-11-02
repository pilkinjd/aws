require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe RoundsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Round. As you add validations to Round, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    {
      name: 'a round',
      description: 'this is a round',
      arrows: 60,
      scoring: 10,
      indoor_outdoor: 'Indoor',
      on_card: false,
      official: true
    }
  end

  let(:invalid_attributes) do
    {
      scoring: 15,
      on_card: 16
    }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RoundsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all rounds as @rounds' do
      round = Round.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:rounds)).to eq([round])
    end
  end

  describe 'GET show' do
    it 'assigns the requested round as @round' do
      round = Round.create! valid_attributes
      get :show, { id: round.to_param }, valid_session
      expect(assigns(:round)).to eq(round)
    end
  end

  describe 'GET new' do
    it 'assigns a new round as @round' do
      get :new, {}, valid_session
      expect(assigns(:round)).to be_a_new(Round)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested round as @round' do
      round = Round.create! valid_attributes
      get :edit, { id: round.to_param }, valid_session
      expect(assigns(:round)).to eq(round)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Round' do
        expect do
          post :create, { round: valid_attributes }, valid_session
        end.to change(Round, :count).by(1)
      end

      it 'assigns a newly created round as @round' do
        post :create, { round: valid_attributes }, valid_session
        expect(assigns(:round)).to be_a(Round)
        expect(assigns(:round)).to be_persisted
      end

      it 'redirects to the created round' do
        post :create, { round: valid_attributes }, valid_session
        expect(response).to redirect_to(Round.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved round as @round' do
        post :create, { round: invalid_attributes }, valid_session
        expect(assigns(:round)).to be_a_new(Round)
      end

      it "re-renders the 'new' template" do
        post :create, { round: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      let(:new_attributes) do
        {
          name: 'new round',
          description: 'a new description'
        }
      end

      it 'updates the requested round' do
        round = Round.create! valid_attributes
        put :update, { id: round.to_param, round: new_attributes }, valid_session
        round.reload
        expect(round.name).to eq('new round')
        expect(round.description).to eq('a new description')
      end

      it 'assigns the requested round as @round' do
        round = Round.create! valid_attributes
        put :update, { id: round.to_param, round: valid_attributes }, valid_session
        expect(assigns(:round)).to eq(round)
      end

      it 'redirects to the round' do
        round = Round.create! valid_attributes
        put :update, { id: round.to_param, round: valid_attributes }, valid_session
        expect(response).to redirect_to(round)
      end
    end

    describe 'with invalid params' do
      it 'assigns the round as @round' do
        round = Round.create! valid_attributes
        put :update, { id: round.to_param, round: invalid_attributes }, valid_session
        expect(assigns(:round)).to eq(round)
      end

      it "re-renders the 'edit' template" do
        round = Round.create! valid_attributes
        put :update, { id: round.to_param, round: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested round' do
      round = Round.create! valid_attributes
      expect do
        delete :destroy, { id: round.to_param }, valid_session
      end.to change(Round, :count).by(-1)
    end

    it 'redirects to the rounds list' do
      round = Round.create! valid_attributes
      delete :destroy, { id: round.to_param }, valid_session
      expect(response).to redirect_to(rounds_url)
    end
  end

end
