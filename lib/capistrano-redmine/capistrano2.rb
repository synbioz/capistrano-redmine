require 'capistrano-redmine'

Capistrano::Configuration.instance(:must_exist).load do

  namespace :redmine do
    desc "Update Redmine issues statuses."
    task :update do
      Capistrano::Redmine.update(
        redmine_site,
        redmine_token,
        exists?('redmine_options') ? redmine_options : {},
        redmine_projects,
        redmine_from_status,
        redmine_to_status,
        logger
      )
    end
  end

end
