get '/hotels/:id' do |id|

    hotel = Hotel.find_by(id: id)
    halt 404 if hotel.nil?

    hotel.to_json
end