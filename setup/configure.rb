# Enable cross origin
enable :cross_origin
set :allow_origin, :any
set :allow_methods, [ :get, :post, :put, :delete, :options ]


set :views, "app/views"

set :static, true
set :public_dir, "app/public"

