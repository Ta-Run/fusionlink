#!/bin/sh

# Wait for PostgreSQL to be ready
until pg_isready -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USERNAME"; do
  echo "⏳ Waiting for Postgres to be ready..."
  sleep 2
done

echo "✅ Postgres is ready. Starting app..."
npm run start:dev
