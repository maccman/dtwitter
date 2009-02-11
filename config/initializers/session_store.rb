# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dtwitter_session',
  :secret      => '63fb64275acc40bdf78d11f8a6ebb4ff53178bf4cc89e2c37302d78b0587ca8747ddf12230acbee0d9831613990ffef825a2e68a306b63389ce88efa99b1ea7d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
