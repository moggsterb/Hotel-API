get '/users' do
    users = User.all
    users.to_json
end