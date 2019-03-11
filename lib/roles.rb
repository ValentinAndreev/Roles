module Roles
  def self.included base
    base.send :include, InstanceMethods
    base.extend ClassMethods
  end

  module InstanceMethods
    def has_role?
      
    end
  end

  module ClassMethods
    def add_roles roles
      enum roles: roles
    end

    def roles_list

    end
  end
end
