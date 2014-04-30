configure :production, :development do
	db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/hashtag-viper')
 
	ActiveRecord::Base.establish_connection(
			:adapter => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
			:host     => db.host,
			:username => 'viper',
			:password => 'viper',
			:database => db.path[1..-1],
			:encoding => 'utf8'
	)
end