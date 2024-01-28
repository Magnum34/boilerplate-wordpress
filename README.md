# Boilerplate Wordpress

## Requirements

- docker and docker-compose

  > Detailed instructions for setup of docker can be found [here](https://www.docker.com/community-edition).

- user added to `docker` group

## Exposed services in Production/Staging environment

- Nginx stable version 1.24  at ports 80/443
- MariaDB version 11.2 at port 3306
- PHP version 8.3

## Initial setup of project

The Makefile is suited to compress the basic docker commands for building and running containers. You can do things like this:
```
# build the whole thing
make build

make help
# Usage: make [TARGET]
# Targets:
# build    build images
#  rebuild  rebuild images
#  run      run all containers
#  stop     stop all containers
#  status   status all containers
#  logs     logs all containers
#  mariadb_export export database
#  mariadb_shell connect with database
#  wordpress_shell shell to application wordpress
#  wordpress_install install wordpress


```
## Getting Started - Wordpress

- Create a /apps/bedrock/.env file with the following environment variables (see .env.example as an example):
  - Database variables
  - DB_NAME - Database name
  - DB_USER - Database user
  - DB_PASSWORD - Database password
  - DB_HOST - Database host
  - Optionally, you can define DATABASE_URL for using a DSN instead of using the variables above (e.g. mysql://user:password@127.0.0.1:3306/db_name)
- WP_ENV - Set to environment (development, staging, production)
- WP_HOME - Full URL to WordPress home (https://example.com)
- WP_SITEURL - Full URL to WordPress including subdirectory (https://example.com/wp)
AUTH_KEY, SECURE_AUTH_KEY, LOGGED_IN_KEY, NONCE_KEY, AUTH_SALT, SECURE_AUTH_SALT, LOGGED_IN_SALT, NONCE_SALT
  - Generate with wp-cli-dotenv-command
  - Generate with our WordPress salts generator
- Add theme(s) in web/app/themes/ as you would for a normal WordPress site
- Set the document root on your webserver to Bedrock's web folder: /path/to/site/web/
- Access WordPress admin at https://example.com/wp/wp-admin/
