require 'rails_helper'

describe 'Corrals API' do
    context 'HTTP GET' do
        it 'returns all Corrals' do
            create_list(:corral, 3)
            
            get '/api/v1/corrals'

            expect(response).to be_successful

            corrals = JSON.parse(response.body)

            expect(corrals.count).to eq(3)
        end

        it 'returns one Corral' do
            id = create(:corral).id

            get "/api/v1/corrals/#{id}"
            
            corral = JSON.parse(response.body, symbolize_names: true)
            
            expect(response).to be_successful
            expect(corral[:id]).to eq(id)
        end
    end
end