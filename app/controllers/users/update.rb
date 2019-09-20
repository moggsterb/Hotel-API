

put "/users/:id" do |id|


    user = User.find_by(id: id)
    halt 404 if user.nil?

    data = JSON.parse( request.body.read.to_s )
    puts "***** #{data}"


    user.assign_attributes data

    if user.save
        user.to_json
    else
        user.to_json        
    end
end