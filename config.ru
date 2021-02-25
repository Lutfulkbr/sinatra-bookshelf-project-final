require_relative 'config/environment'

use Rack::MethodOverride


# use Bookscontroller
use UsersController
run ApplicationController