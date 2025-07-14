# database/Dockerfile
FROM mysql:8.0

# Copy your init‑SQL into the special entrypoint directory
COPY users.sql /docker-entrypoint-initdb.d/

# Document the port (optional, but helpful)
EXPOSE 3306
