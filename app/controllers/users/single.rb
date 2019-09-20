get '/users/:id' do |id|

    user = User.find_by(id: id)
    halt 404 if user.nil?

    user.to_json
end