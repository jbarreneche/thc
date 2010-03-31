# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_thc_session',
  :secret => 'a3cf46630c523c46d18f88a7ff00ab526f472f9313fdee150d56cf4e1eed34a16b1a912efe5598796cbe6f4c42c2f39efaf80308e6bce37a36908f8367c72dbb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
