delete "/users/:id" do |id|

    user = User.find_by(id: id)
    halt 404 if user.nil?

    if user.delete
        user.to_json
    else
        {"error": "Couldn't delete User"}.to_json
    end
end