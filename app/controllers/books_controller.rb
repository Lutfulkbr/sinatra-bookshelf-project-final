class BooksController < ApplicationController

    get '/book/new' do
        not_logged_in?
        erb :"book/new"
    end

    post '/book' do
        # binding.pry
        book = current_user.books.new(params)
        if book.save
            redirect "/user/#{curent_user.id}"
        else
            erb :"book/new"
        end
    end

end