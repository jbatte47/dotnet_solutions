require "bundler/gem_tasks"

desc 'Uninstalls the gem (analagous to running gem uninstall dotnet_solutions)'
task :uninstall do
  system('gem uninstall dotnet_solutions')
end

desc 'Uninstalls then reinstalls the gem'
task :reload => [:uninstall, :install]