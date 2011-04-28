# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gap_khakis_women_session',
  :secret      => 'ae8320bbd5f11356da429ffefaa41421509d9edc4c70f0b48c25cc8b5bdbbeb374a93a19d0dddfd775e3aa08c844ec1ff92c68dcfdd2441e51437c50f7733612'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
