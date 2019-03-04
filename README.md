# README

The administration framework for business critical Ruby on Rails applications along with Rails 5 API

* Rails in API-only mode
  ** API by Rails 5, leaving React to handle the UI APP.

* Admin
  ** A reliable CMS & Db backend.

# Installation

Prerequisites:

* Ruby 2.3.1
* JRE (Mac installation link : https://support.apple.com/kb/DL1572?locale=en_US)

After pulling the repository, run the following command in Bash from the
application's root:
  
  * Run bundle install
  * Configure database:
    ** Create the DB user by running command:
    ```sudo -u postgres psql -c "CREATE USER admin WITH CREATEDB NOCREATEROLE PASSWORD 'admin'"```
    ** Export the environment to set the credentials with
    ```export DATABASE_USERNAME=admin DATABASE_PASSWORD=admin```
    ** You can use direnv so that you don't need to export these environment variables every time, or change username/password in config/database.yml
  * Run command bin/rails db:setup to create database with seed data.
  * Start server: rails s  

  OR
    
  * ./bin/setup

Now you should be able to run the application by running:

    rails s

Be sure to clean and update your gems after pulling a new version:

    gem clean all && bundle install

# Unit Testing

To run unit tests run:

    rake spec

To clear the VCR cache and clear the logs manually, run:

    rake clean

To run the unit tests but clear the VCR cache and logs first, run:

    rake spec!