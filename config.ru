require_relative 'config/environment'

use Rack::MethodOverride


use BooksController
use UsersController
run ApplicationController
