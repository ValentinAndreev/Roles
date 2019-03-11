require 'rails/generators'
require 'rails/generators/active_record'

module Roles
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path('../templates', __FILE__)

    class_option :model, optional: true, type: :string, banner: 'model',
                         desc: "Specify the model class name if you will use anything other than 'User'"

    desc 'Generates migration file.'
    def create_migration_file
      migration_template 'add_role.rb', 'db/migrate/add_role.rb'
    end

    def model_class_name
      options[:model] ? options[:model].classify : 'User'
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        sleep 1 # make sure each time we get a different timestamp
        Time.new.utc.strftime('%Y%m%d%H%M%S')
      else
        format('%.3d', (current_migration_number(dirname) + 1))
      end
    end
  end
end
