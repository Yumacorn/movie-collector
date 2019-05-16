require_relative './config/environment'

require './config/environment'

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use SessionsController
use PostsController
use UsersController
run ApplicationController

# If shotgun fails to stop server and continues to listen
# ps aux | grep ruby => kill -9 'pid'
