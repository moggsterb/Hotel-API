post "/hotels" do 

    data = JSON.parse( request.body.read.to_s )
    puts "***** #{data}"

    hotel = Hotel.new
    hotel.assign_attributes data

    if hotel.save
        hotel.to_json
    else
        {"error": "Couldn't create Hotel"}.to_json  
    end
end