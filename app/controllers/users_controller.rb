class UsersController < ApplicationController

    get '/signup' do
        erb :"user/new"
    end

    post '/signup' do
        user = User.new(params[:user])
        
        if @user.save
            session[:user_id] = @user.id
            flash[:info] = "You've been seccessfully registered!"
            redirect "/user/#{user.id}"
        else
            flash[:info] = "There was an error, Please complete the form to sign up!"
            erb :"user/new"
        end
    end

    get '/login' do
        erb :'user/login'
    end

    post '/login' do
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect '/user'
        else
            flash[:info] = "The username or password didn't match. Please try again"
            redirect '/login'
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end

end