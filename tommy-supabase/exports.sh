############
# Secrets
# YOU MUST CHANGE THESE BEFORE GOING INTO PRODUCTION
############

export POSTGRES_PASSWORD=your-super-secret-and-long-postgres-password
export JWT_SECRET=your-super-secret-jwt-token-with-at-least-32-characters-long
export ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UtZGVtbyIsCiAgICAiaWF0IjogMTY0MTc2OTIwMCwKICAgICJleHAiOiAxNzk5NTM1NjAwCn0.dc_X5iR_VP_qT0zsiyj_I_OZ2T9FtRU2BBNWN8Bu4GE
export SERVICE_ROLE_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJzZXJ2aWNlX3JvbGUiLAogICAgImlzcyI6ICJzdXBhYmFzZS1kZW1vIiwKICAgICJpYXQiOiAxNjQxNzY5MjAwLAogICAgImV4cCI6IDE3OTk1MzU2MDAKfQ.DaYlNEoUrrEn2Ig7tqibS-PHK5vgusbcbo7X36XVt4Q
export DASHBOARD_USERNAME=supabase
export DASHBOARD_PASSWORD=this_password_is_insecure_and_should_be_updated

############
# Database - You can change these to any PostgreSQL database that has logical replication enabled.
############

export POSTGRES_HOST=db
export POSTGRES_DB=postgres
export POSTGRES_PORT=5432
# default user is postgres

############
# API Proxy - Configuration for the Kong Reverse proxy.
############

export KONG_HTTP_PORT=8000
export KONG_HTTPS_PORT=8443


############
# API - Configuration for PostgREST.
############

export PGRST_DB_SCHEMAS=public,storage,graphql_public


############
# Auth - Configuration for the GoTrue authentication server.
############

## General
export SITE_URL=http://localhost:3000
export ADDITIONAL_REDIRECT_URLS=
export JWT_EXPIRY=3600
export DISABLE_SIGNUP=false
export API_EXTERNAL_URL=http://$DEVICE_DOMAIN_NAME:8000

## Mailer Config
export MAILER_URLPATHS_CONFIRMATION="/auth/v1/verify"
export MAILER_URLPATHS_INVITE="/auth/v1/verify"
export MAILER_URLPATHS_RECOVERY="/auth/v1/verify"
export MAILER_URLPATHS_EMAIL_CHANGE="/auth/v1/verify"

## Email auth
export ENABLE_EMAIL_SIGNUP=true
export ENABLE_EMAIL_AUTOCONFIRM=false
export SMTP_ADMIN_EMAIL=admin@example.com
export SMTP_HOST=supabase-mail
export SMTP_PORT=2500
export SMTP_USER=fake_mail_user
export SMTP_PASS=fake_mail_password
export SMTP_SENDER_NAME=fake_sender
export ENABLE_ANONYMOUS_USERS=false

## Phone auth
export ENABLE_PHONE_SIGNUP=true
export ENABLE_PHONE_AUTOCONFIRM=true


############
# Studio - Configuration for the Dashboard
############

export STUDIO_DEFAULT_ORGANIZATION=Default Organization
export STUDIO_DEFAULT_PROJECT=Default Project

export STUDIO_PORT=3000
# replace if you intend to use Studio outside of localhost
#export SUPABASE_PUBLIC_URL=http://localhost:8000

# Enable webp support
export IMGPROXY_ENABLE_WEBP_DETECTION=true

############
# Functions - Configuration for Functions
############
# NOTE: VERIFY_JWT applies to all functions. Per-function VERIFY_JWT is not supported yet.
export FUNCTIONS_VERIFY_JWT=false

############
# Logs - Configuration for Logflare
# Please refer to https://supabase.com/docs/reference/self-hosting-analytics/introduction
############

export LOGFLARE_LOGGER_BACKEND_API_KEY=your-super-secret-and-long-logflare-key

# Change vector.toml sinks to reflect this change
export LOGFLARE_API_KEY=your-super-secret-and-long-logflare-key

# Docker socket location - this value will differ depending on your OS
export DOCKER_SOCKET_LOCATION=/var/run/docker.sock

# Google Cloud Project details
export GOOGLE_PROJECT_ID=GOOGLE_PROJECT_ID
export GOOGLE_PROJECT_NUMBER=GOOGLE_PROJECT_NUMBER