post "/deeds" do 

    data = JSON.parse( request.body.read.to_s )

    deed = Deed.new
    deed.assign_attributes data

    if deed.save
        deed.to_json
    else
        {"error": "Couldn't create Deed"}.to_json  
    end
end