require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  describe '404 routes' do
    it 'must return 404 for non existent routes' do
      expect(get: '/nonexistent').to route_to(controller: 'errors', action: :not_found, a: '/nonexistent')
    end
  end
end
