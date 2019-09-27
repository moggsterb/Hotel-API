require "./app"

$stdout.sync = true
set :protection, except: :json_csrf
run Sinatra::Application