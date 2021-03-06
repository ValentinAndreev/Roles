module Roles
  extend ActiveSupport::Concern

  module ClassMethods
    def add_roles roles
      enum role: roles
    end

    def roles_list
      roles.keys.map(&:to_sym)
    end

    def with_roles roles
      where(role: roles)
    end

    def not_with_roles roles
      where.not(role: roles)
    end

    def change_roles(roles_to_change, role)
      with_roles(roles_to_change).update_all(role: role)
    end

    def roles_exists? roles
      roles_list & roles
    end

    def unused_roles
      roles_list - used_roles
    end

    def used_roles
      pluck(:role).uniq.map(&:to_sym)
    end
  end
end
