require 'sinatra'

# Example routes
get '/' do
    @title = "Home Page"
    erb :home
end

get '/about' do
    @title = "About Us"
    erb :about
end

get '/custom' do 
    @title = "Custom Page"
    erb :custom_layout
end

# Admin Routes
get '/admin/dashboard' do
    @title = "Admin Dashboard"
    erb :'admin/dashboard', layout: :'layouts/admin_layout' # Render views/admin/dashboard.erb
end

get '/admin/settings' do
    @title = "Admin Settings"
    erb :'admin/settings', layout: :'layouts/admin_layout' # Render views/admin/settings.erb
end

# User Routes
get '/user/dashboard' do
    @title = "User Dashboard"
    erb :'user/dashboard', layout: :'layouts/user_layout' # Render views/user/dashboard.erb
end

get '/user/profile' do
    @title = "User Profile"
    erb :'user/profile', layout: :'layouts/user_layout'  # Render views/user/profile.erb
end