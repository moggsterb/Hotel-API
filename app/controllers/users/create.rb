

post "/users" do 

    data = JSON.parse( request.body.read.to_s )
    puts "***** #{data}"

    user = User.new
    user.assign_attributes data

    if user.save
        user.to_json
    else
        {"error": "Couldn't create User"}.to_json  
    end
end