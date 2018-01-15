require 'rails_helper'

describe '/api' do
  describe '/pair_programming_session' do
    def api_call *params
      get '/api/pair_programming_sessions', *params
    end

    let(:token) { create :authentication_token }
    let(:original_params) { { token: token.token} }
    let(:params) { original_params }

    it_behaves_like 'restricted for developers'

    context 'invalid params' do
    end

    context 'valid params' do
    end
  end
end