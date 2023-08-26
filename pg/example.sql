CREATE USER event_user WITH PASSWORD 'event_password';
CREATE DATABASE event;
GRANT ALL PRIVILEGES ON DATABASE event TO event_user;
CREATE USER command_user WITH PASSWORD 'command_password';
CREATE DATABASE command;
GRANT ALL PRIVILEGES ON DATABASE command TO command_user;
\c event
GRANT ALL ON SCHEMA public TO event_user;
\c command
GRANT ALL ON SCHEMA public TO command_user;
