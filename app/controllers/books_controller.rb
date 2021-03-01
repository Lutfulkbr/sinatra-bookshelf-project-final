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
            redirect "/book/#{book.id}"
        else
            @errors = book.errors.full_messages.join(" - ")
            erb :"book/new"
        end
    end

    get '/book/:id' do
        not_logged_in?
        @book = Book.find_by(id: params[:id])
        if @book && @book.user_id == current_user.id
            erb :"book/show"
        else
            redirect "/user/#{current_user.id}"
        end
    end

    get '/book/:id/edit' do
        not_logged_in?
        @book = Book.find_by(id: params[:id])
        if @book.user == current_user
            erb :"book/edit"
        else
            redirect "/book/#{@book.id}"
        end
    end

    patch '/book/:id/edit' do
        not_logged_in?
        @book = Book.find_by(id: params[:id])
        if @book && @book.user_id == current_user.id
            @book.update(params[:book])
        end

        redirect "/book/#{@book.id}"
    end

    get '/delete/:id' do
        not_logged_in?
        @book = Book.find_by(id: params[:id])
        if @book && @book.user_id == current_user.id
            erb :delete
        end
    end

    delete '/book/:id' do
        not_logged_in?
        # if params.has_key?("ok")
            @book = Book.find_by(id: params[:id])
            if @book && @book.user_id == current_user.id
                @book.destroy
            end
        # end
        redirect "/user/#{current_user.id}"
    end

end