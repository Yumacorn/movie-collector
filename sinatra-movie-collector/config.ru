require_relative './config/environment'

require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use SessionsController
use MoviesController
use UsersController
run ApplicationController

# Ctrl + C or Ctrl + Z to force-stop Shotgun server
# If shotgun fails to stop server and continues to listen
# ps aux | grep ruby => kill -9 'pid'
