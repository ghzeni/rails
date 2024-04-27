## blog

### starting the application
```bash
rails s
```

### 📁 folder structure
- **app/**: Contains the controllers, models, views, helpers, mailers, channels, jobs, and assets for the blog application.
- **bin/**: 	Contains the rails script that starts the app and can contain other scripts to set up, update, deploy, or run the application.
- **config/**: 	Contains [configuration](https://guides.rubyonrails.org/configuring.html) for the application's routes, database, and more.
- **config.ru**: Rack configuration for Rack-based servers used to start the application.
- **db/**: Contains the current database schema, as well as the database migrations.
- **Dockerfile**: Configuration file for Docker.
- **Gemfile, Gemfile.lock**: These files allow you to specify what gem dependencies are needed for your Rails application. Used by the Bundler gem.
- **lib/**: Extended modules for the application.
- **log/**: Application log files.
- **public/**: Contains static files and compiled assets. When the app is running, this directory will be exposed as-is.
- **Rakefile**: This file locates and loads tasks that can be run from the command line.
- **README.md**: This is the file you are reading now.
- **storage/**: [Active Storage](https://guides.rubyonrails.org/active_storage_overview.html) files for Disk Service.
- **test/**: Unit tests, fixtures, and other [test apparatus](https://guides.rubyonrails.org/testing.html).
- **tmp/**: Temporary files (like cache and pid files).
- **vendor/**: A place for all third-party code. In a typical Rails application, this includes vendored gems.
- **.dockerignore**: Files that should be ignored by Docker.
- **.gitattributes**: Metadata for specific paths in a git repository.
- **.gitignore**: Files that should be ignored by git.
- **.ruby-version**: Contains the Ruby version.