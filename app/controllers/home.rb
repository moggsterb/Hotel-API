require 'sass'

get('/styles.css'){ sass :styles }

get '/' do
    @title = 'Hotel API'
    @users = User.all
    @hotels = Hotel.all
    @deeds = Deed.all
    erb :home
end
