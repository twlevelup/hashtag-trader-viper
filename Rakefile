task :default => [:test]

desc "Run automated tests"
task :test do
  ruby "test/unitest.rb"
end

desc "Run server locally"
task :server do
	sh "rerun 'thin start -R config.ru'"
end