get '/hotels' do
    hotels = Hotel.all
    hotels.to_json
end