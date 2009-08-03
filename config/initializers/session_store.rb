# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rx_model_attachments_session',
  :secret      => '12c370cc215562e7312e79aba64eeee0c747f42a0967dfa83d293060665cce1be4ee8c476f905e07edcb32688826db39f6964a707eb59876adcbce47f20b19ac'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
