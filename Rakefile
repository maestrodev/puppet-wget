require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
require 'rake/clean'
require 'puppet_blacksmith/rake_tasks'
PuppetLint.configuration.send('disable_80chars')
PuppetLint.configuration.send('disable_140chars')
PuppetLint.configuration.relative = true
PuppetLint.configuration.ignore_paths = ["spec/**/*.pp", "pkg/**/*.pp"]

CLEAN.include('spec/fixtures/manifests/', 'spec/fixtures/modules/', 'doc', 'pkg')
CLOBBER.include('.tmp', '.librarian')

desc 'Validate manifests, templates, and ruby files'
task :validate do
  Dir['manifests/**/*.pp'].each do |manifest|
    sh "puppet parser validate --noop #{manifest}"
  end
  Dir['spec/**/*.rb','lib/**/*.rb'].each do |ruby_file|
    sh "ruby -c #{ruby_file}" unless ruby_file =~ /spec\/fixtures/
  end
  Dir['templates/**/*.erb'].each do |template|
    sh "erb -P -x -T '-' #{template} | ruby -c"
  end
end

Blacksmith::RakeTask.new do |t|
  t.build = false # do not build the module nor push it to the Forge, just do the tagging [:clean, :tag, :bump_commit]
end
