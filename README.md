# Roles
Simplest roles gem, based on enums.

## Usage
Use generator:  
rails g roles:install (default for User model, or rails g roles:install --model Person - for Person model)  

Example:  
  
Add to model:  
include Roles  
add_roles [:user, :admin]  
first (user) will be default role  

List of aviable class methods:  
roles_list - list of all roles (return array of symbols),  
with_roles roles - all users with roles included in array of symbols,  
not_with_roles roles - all users with roles excluded from array of symbols,  
change_roles(roles_to_change, role) - change all roles included in array of symbols to role,  
roles_exists? roles - return array of symbols with existed roles (on input - array of symbols with roles),  
unused_roles - return array of symbols with unused roles,  
used_roles - return array of symbols with used roles  

From enums:  
user.role? - does user have this role?  
user.role! - set role for user  
user.role - return role of specific user  
User.role - scopes of users with single role  
User.roles - returns hash with all roles  

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'roles', git: 'git://github.com/ValentinAndreev/Roles.git'
```

And then execute:
```bash
$ bundle
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
