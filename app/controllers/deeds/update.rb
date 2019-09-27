put "/deeds/:id" do |id|


    deed = Deed.find_by(id: id)
    halt 404 if deed.nil?

    data = JSON.parse( request.body.read.to_s )
    puts "***** #{data}"


    deed.assign_attributes data

    if deed.save
        deed.to_json
    else
        {"error": "Couldn't update Deed"}.to_json 
    end
end