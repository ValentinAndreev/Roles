module Roles
  def self.included base
    base.send :include, InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def has_role? role
      
    end

    def change_role(role_to_change, role)
    end

    def role_name role
    end
  end

  module ClassMethods
    def add_roles roles
      enum role: roles
    end

    def roles_list
      roles.keys
    end

    def with_roles roles
    end

    def not_with_roles roles
    end

    def change_roles(roles_to_change, role)
    end

    def roles_exists? roles
    end

    def unused_roles
    end

    def used_roles
    end
  end
end
