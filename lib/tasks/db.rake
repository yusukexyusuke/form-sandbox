namespace :db do
  desc 'Initialize Database'
  task init: 'db:load_config' do
    Rake::Task['db:migrate:reset'].invoke
    Rake::Task['db:seed'].invoke
  end
end
