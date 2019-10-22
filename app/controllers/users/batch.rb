post "/users/batch" do 

    data = JSON.parse( request.body.read.to_s )
    puts "***** #{data} ******"
    puts "***** #{data["fields"]} ******"
    puts "***** #{data["selected"]} ******"

    users = User.where('id in (?)', data['selected'])
    users.update_all(data['fields']);

    # user = User.new
    # user.assign_attributes data

    # if user.save
    #     user.to_json
    # else
    #     {"error": "Couldn't create User"}.to_json  
    # end
    return users.to_json
end