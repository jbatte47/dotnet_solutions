# .NET Solutions (for Ruby)

Used to generate and maintain metadata for .NET development.

## Installation

Add this line to your application's Gemfile:

    gem 'dotnet_solutions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dotnet_solutions

## Usage

```ruby
# create or load the solution.json file
solution = DotNetSolutions::Solution.new('solution.json')

# add a NuGet dependency
solution.add_package({ :name => 'Patterns', :pre => true })

# update a NuGet dependency
solution.update_package({ :name => 'Castle.Core' })
solution.update_package({ :name => 'Autofac', :max_version => '3.2', :pre => true })

# remove a NuGet dependency
solution.remove_package({ :name => 'AutoMapper' })
```

## Contributing

1. Fork it ( https://github.com/TheTribe/dotnet_solutions/fork )
2. Create issue to associate feature with ( https://github.com/TheTribe/dotnet_solutions/issues/new )
3. Clone your fork ( `git clone https://github.com/[your_user_name]/dotnet_solutions.git -b next` )
4. Create your feature branch ( `git checkout -b feature/issue-number` )
5. Commit your changes ( `git commit -am 'Add some feature'` )
6. Push to the branch ( `git push origin feature/issue-number` )
7. Create a new Pull Request to `TheTribe`:`next` branch