def self.load_if_exists( file_path )
  if File.exist?( file_path )
    begin
      # If there is an error that occurs during seeding, the transaction causes
      # all data seeded up to that point to be rolled back. This prevents the
      # database from being incompletely seeded.
      ActiveRecord::Base.transaction do
        load( file_path )
      end
    rescue StandardError => e
      puts 'Error: ' + e.message
      puts e.backtrace
    end
  end
end

# Allow separate files for test, development, and production seeds by loading
# one file in accordance with the current environment.
load_if_exists( Rails.root.join( 'db', 'seeds', "#{Rails.env.downcase}.rb" ) )
