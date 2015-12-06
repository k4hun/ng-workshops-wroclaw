require 'rails_helper'

RSpec.describe PaymentsController do
  let(:user) { create :user }

  before { sign_in user }

  describe 'GET #index' do
    subject { get :index }
    it_behaves_like 'template rendering action', :index
  end

  describe 'GET #new' do
    subject { get :new }
    it_behaves_like 'template rendering action', :new
  end

  describe 'POST #create' do
    let!(:params) { { payment: build(:payment).attributes } }
    subject { post :create, params }

    context 'success' do
      it { is_expected.to redirect_to payments_path }

      it 'flashes info' do
        subject
        expect(flash[:notice]).to eq I18n.t('shared.created', resource: 'Payment')
      end
    end

    context 'faliure' do
      include_context 'record save failure'
      it_behaves_like 'template rendering action', :new
    end
  end
end
