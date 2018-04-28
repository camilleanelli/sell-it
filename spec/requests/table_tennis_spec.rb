require 'rails_helper'

RSpec.describe 'Table tennis api', type: :request do

  describe '#ping' do
    context "when the user is not authentified" do
      it 'returns unauthenticated pong ' do
        get '/ping'
        expect(parsed_body['response']).to eq('unauthorized pong')
      end
    end

    context "when the user is authenticated" do

      before { get '/ping', headers: authentication_header }

      it 'works' do
        expect(response).to be_success
      end

      it 'return authorized pong' do
        expect(parsed_body['response']).to eq('authorized pong')
      end
    end

  end
end
