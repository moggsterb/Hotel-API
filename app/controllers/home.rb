require 'sass'

get('/styles.css'){ sass :styles }

get '/' do
    @title = 'Hotel API'
    @users = User.all
    erb :home
end
