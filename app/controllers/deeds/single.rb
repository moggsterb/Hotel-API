get '/deeds/:id' do |id|

    deed = Deed.find_by(id: id)
    halt 404 if deed.nil?

    deed.to_json
end