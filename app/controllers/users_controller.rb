class UsersController < ApplicationController

    get '/signup' do
        erb :"user/new"
    end

    post '/signup' do
        @user = User.new(params[:user])
        
        if @user.save
            session[:user_id] = @user.id
            redirect "/user/#{@user.id}"
        else
            @errors = @user.errors.full_messages.join(" - ")
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
            @errors = @user.errors.full_messages.join(" - ")
            redirect '/login'
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end

    get '/user' do
        redirect "/user/#{current_user.id}"
    end

    get '/user/:id' do
        not_logged_in?

        @user = User.find_by(id: params[:id])
        if @user.id == current_user.id
            erb :"user/show"
        else
            redirect "/user/#{current_user.id}"
        end

    end

    get '/user/:id/edit' do
        not_logged_in?
        @user = User.find_by(id: params[:id])
        if @user.id == current_user.id
            erb :'user/edit'
        else
            redirect "/user/#{current_user.id}"
        end
    end

    patch '/user/:id/edit' do

        not_logged_in?

        @user = User.find(params[:id])
        if @user.id == current_user.id
            @user.update(params[:user])
            redirect "/user/#{@user.id}"
        else
            redirect "/user/#{current_user.id}"
        end

    end

end
