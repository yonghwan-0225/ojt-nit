FROM python:3.4-slim

RUN apt-get update && apt-get install -y \
		gcc \
		gettext \
		mysql-client \
		libpq-dev \
		sqlite3 \
	        --no-install-recommends && rm -rf /var/lib/apt/lists/*

ENV DJANGO_VERSION 1.11

RUN pip install psycopg2 django=="$DJANGO_VERSION"

