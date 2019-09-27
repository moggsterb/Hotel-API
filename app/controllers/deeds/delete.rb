delete "/deeds/:id" do |id|

    deed = Deed.find_by(id: id)
    halt 404 if deed.nil?

    if deed.delete
        deed.to_json
    else
        {"error": "Couldn't delete Deed"}.to_json
    end
end