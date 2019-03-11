# Roles
Simplest roles gem, based on enums.

## Usage
Use generator:
rails g roles:install (default for User model, or rails g roles:install --model Person - for Person model)

Add to model:
include Roles
add_roles [:user, :admin]
first (user) will be default role

List of aviable methods:

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'roles', git: 'git://github.com/ValentinAndreev/Roles.git'
```

And then execute:
```bash
$ bundle
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
