

put "/users/:id" do |id|


    user = User.find_by(id: id)
    halt 404 if user.nil?


    user.assign_attributes @params

    if user.save
        user.as_json
    else
        user.errors.messages        
    end
end