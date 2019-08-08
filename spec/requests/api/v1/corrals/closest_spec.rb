require 'rails_helper'

describe 'Closest Corrals API' do
    context 'HTTP GET' do
        before :each do
            @corral_1 = create(:corral, address: "2nd Closest St", latitude: 39.9485614, longitude: -75.1546531)
            @corral_2 = create(:corral, address: "1st Closest St", latitude: 39.9600701, longitude: -75.1773428)
        end

        it 'returns single closest Corral' do
            get api_v1_corrals_closest_corral_path, params: { origin_lat:   39.989279, origin_long: -75.243237}

            expect(response).to be_successful

            corral = JSON.parse(response.body, symbolize_names: true)

            expect(corral[:id]).to eq(@corral_2.id)
        end

        it 'returns num closest Corrals' do
            create_list(:corral, 8)

            get api_v1_corrals_closest_corrals_path, params: { origin_lat:   39.989279, origin_long: -75.243237, amount: 5}

            expect(response).to be_successful

            corrals = JSON.parse(response.body, symbolize_names: true)

            expect(corrals.count).to eq(5)
            expect(corrals[0][:id]).to eq(@corral_2.id)
        end
    end
end