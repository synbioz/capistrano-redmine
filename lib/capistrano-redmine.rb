# -*- encoding: utf-8 -*-
require "capistrano-redmine/common"
require "capistrano-redmine/redmine_client"

if Gem::Specification.find_by_name('capistrano').version >= Gem::Version.new('3.0.0')
  load File.expand_path('../capistrano-redmine/tasks/redmine.rake', __FILE__)
else
  require "capistrano/logger"
  require 'capistrano-redmine/capistrano2'
end
