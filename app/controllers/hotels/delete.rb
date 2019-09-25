delete "/hotels/:id" do |id|

    hotel = Hotel.find_by(id: id)
    halt 404 if hotel.nil?

    if hotel.delete
        hotel.to_json
    else
        {"error": "Couldn't delete Hotel"}.to_json
    end
end