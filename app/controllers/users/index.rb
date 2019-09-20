get '/users' do
    cross_origin
    users = User.all
    users.to_json
end