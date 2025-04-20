# Environment
export NODE_ENV=production

# Database
export POSTGRES_USER=latitude
export POSTGRES_PASSWORD=secret
export DATABASE_URL=postgresql://latitude:secret@db:5432/latitude_production

# Redis
export QUEUE_PORT=6379
export QUEUE_HOST=redis
export CACHE_PORT=6379
export CACHE_HOST=redis

# Networking
export APP_DOMAIN=umbrel.local # e.g latitude.so
export APP_URL=http://umbrel.local:5030 # e.g https://app.latitude.so

# Websockets
export WEBSOCKETS_SERVER=http://websockets
export WEBSOCKETS_SERVER_PORT=8080
export WEBSOCKET_REFRESH_SECRET_TOKEN_KEY=websocket-refresh-secret-token
export WEBSOCKET_SECRET_TOKEN_KEY=websocket-secret-token

# Email Configuration
export MAIL_TRANSPORT= mailpit # smtp, mailgun, mailpit - default transport is mailpit
export FROM_MAILER_EMAIL=hello@latitude.localhost # e.g hello@latitude.so
export MAILGUN_EMAIL_DOMAIN=latitude.localhost # e.g email.latitude.so
export MAILGUN_MAILER_API_KEY= # (optional)
export MAILGUN_HOST=api.eu.mailgun.net # (optional)
export MAILGUN_PROTOCOL=https # (optional)
# SMTP Email Configuration (if MAIL_TRANSPORT is set to smtp)
# NOTE: If you are using Mailpit, you can skip SMTP configuration
export SMTP_HOST= # e.g. smtp.gmail.com
export SMTP_PORT=465 # e.g. 465 or 587
export SMTP_SECURE=true # e.g. true SMTPS (465) or false for STARTTLS (587)
export SMTP_USER=your_email@gmail.com # your email address
export SMTP_PASS=your_app_password # your email password (app password for Gmail)

# File storage
# NOTE: In docker environment "local" strategy will not work out of the box since
# multiple containers would need to have access to the same local disk. You can use "s3" strategy instead
# or set up a shared volume and point the public files path to it.
export DRIVE_DISK=local # options: local, s3

# Paths for local storage (optional)
export FILE_STORAGE_ROOT_PATH="/app/storage/files" # e.g /app/storage/files
export FILE_PUBLIC_PATH="files" # e.g files
export FILES_STORAGE_PATH="/app/storage/files" # e.g /app/storage/files
export PUBLIC_FILES_STORAGE_PATH="/app/apps/web/public/files" # e.g /app/storage/public/files (IMPORTANT: has to be in nextjs's public folder)

# AWS S3 (optional)
# If you are using AWS IAM roles, you can skip AWS_ACCESS_KEY and AWS_ACCESS_SECRET
export ASW_REGION=
export AWS_ACCESS_KEY=
export AWS_ACCESS_SECRET=
export PUBLIC_S3_BUCKET=
export S3_BUCKET=

# Google OAuth
export GOOGLE_CLIENT_ID=fake
export GOOGLE_CLIENT_SECRET=fake
export GOOGLE_REDIRECT_URI=${APP_URL}/api/auth/google/callback