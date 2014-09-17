require 'capistrano-redmine'

namespace :redmine do
  desc "Update Redmine issues statuses."
  task :update do
    Capistrano::Redmine.update(
      fetch(:redmine_site),
      fetch(:redmine_token),
      fetch(:redmine_options).any? ? fetch(:redmine_options) : {},
      fetch(:redmine_projects),
      fetch(:redmine_from_status),
      fetch(:redmine_to_status)
    )
  end
end
