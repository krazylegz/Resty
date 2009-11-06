# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Resty_session',
  :secret      => '677aef66eae37457973e9c67fd86da7b818b8ee583ae9077b97b751310fff6063df8a8ce6080ee78338a6935f9f0e02b40bb534b4f868a5cb48898cc8ad1d55b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
