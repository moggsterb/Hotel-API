get '/deeds' do
    deeds = Deed.all
    deeds.to_json
end