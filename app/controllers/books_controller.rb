class BooksController < ApplicationController

    get '/book' do
        not_logged_in?
        @books = Book.all
        erb :"book/index"
    end

    get '/book/new' do
        not_logged_in?
        erb :"book/new"
    end

    post '/book' do
        book = current_user.books.new(params)
        if book.save
            redirect "/user/#{current_user.id}"
        else
            @errors = book.errors.full_messages.join(" - ")
            erb :"book/new"
        end
    end

    get '/book/:id' do
        @book = Book.find_by(id: params[:id])
        if @book && @book.user_id == current_user.id
            erb :"book/show"
        else
            redirect "/book"
        end
    end

end