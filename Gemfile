source ENV['GEM_SOURCE'] || 'https://rubygems.org'

if puppetversion = ENV['PUPPET_GEM_VERSION']
  gem 'puppet', puppetversion, :require => false
else
  gem 'puppet', :require => false
end

gem 'rspec', :require => false
gem 'rake', :require => false
gem 'metadata-json-lint', :require => false
gem 'puppetlabs_spec_helper', '>= 1.2.0', :require => false
gem 'facter', '>= 1.7.0', :require => false
gem 'rspec-puppet', :require => false
gem 'puppet-lint', '~> 2.0', :require => false
gem 'puppet-lint-absolute_classname-check', :require => false
gem 'puppet-lint-alias-check', :require => false
gem 'puppet-lint-empty_string-check', :require => false
gem 'puppet-lint-file_ensure-check', :require => false
gem 'puppet-lint-file_source_rights-check', :require => false
gem 'puppet-lint-leading_zero-check', :require => false
gem 'puppet-lint-spaceship_operator_without_tag-check', :require => false
gem 'puppet-lint-trailing_comma-check', :require => false
gem 'puppet-lint-undef_in_function-check', :require => false
gem 'puppet-lint-unquoted_string-check', :require => false
gem 'puppet-lint-variable_contains_upcase', :require => false

gem 'simplecov', :require => false
gem 'puppet-blacksmith', '>= 3.3.1', :require => false

group :maint do
  gem 'librarian-puppet', '>= 2.0.0', :require => false
end

group :acceptance do
  gem 'beaker-rspec', '>= 3.0.0', :require => false
end

# vim:ft=ruby
