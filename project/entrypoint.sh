#!/bin/sh

echo "Wait for postgres..."

#netcat scanns for open port 5432 of service web-db

while nc -z web-db 5432; do
	sleep 0.1
done

echo "PostgreSQL started"

exec "$@"
