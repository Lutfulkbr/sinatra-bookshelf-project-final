class BooksController < Sinatra::Base

    get '/book/new' do
        not_logged_in?
        erb :"book/new"
    end

end