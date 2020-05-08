# CircleCI Demo Application: Ruby on Rails [![CircleCI](https://circleci.com/gh/CircleCI-Public/circleci-demo-ruby-rails.svg?style=svg)](https://circleci.com/gh/CircleCI-Public/circleci-demo-ruby-rails)

This is an example application showcasing how to run a Ruby on Rails app on CircleCI 2.0 using 2.1 configuration.

You can follow along with this project by reading the [documentation](https://circleci.com/docs/2.0/language-ruby/).

## Local Development

### set environment

1. Create your `app.env` file from the example file: `cp .env.app.testing app.env`
```
POSTGRES_HOST=db
PGUSER=postgres
PGPASSWORD=postgres
RAILS_ENV=development
```

2. Create your `db.env` file from the example file: `cp .env.db.testing db.env`
```
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=rails_blog_dev
```

### Starting the application

```
$ docker-compose build
$ docker-compose up
$ docker-compose run web bundle exec rails db:migrate:reset
```

### reset the database

```
$ docker-compose up db
$ docker-compose run web bundle exec rails db:migrate:reset
```

Navigate to http://localhost:3000

## License

Copyright (c) 2019 CircleCI

Distributed under the MIT License. See the file COPYING.
