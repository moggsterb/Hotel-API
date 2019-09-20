get '/users/:id' do |id|
    user = User.find_by(id: id)
    user.to_json
end