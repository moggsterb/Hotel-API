put "/hotels/:id" do |id|


    hotel = Hotel.find_by(id: id)
    halt 404 if hotel.nil?

    data = JSON.parse( request.body.read.to_s )
    puts "***** #{data}"


    hotel.assign_attributes data

    if hotel.save
        hotel.to_json
    else
        {"error": "Couldn't update Hotel"}.to_json 
    end
end