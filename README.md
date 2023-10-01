# hamani sample

## start dev server

```
docker compose build
docker compose up -d
```

access localhost:2300

## database setup

in the db container

set cli username and dbname

```
psql -U postgres -d postgres
```

create database

```
createdb bookshelf_development
createdb bookshelf_test
```

## env setup

create .env

```
DATABASE_URL=postgres://postgres:password@localhost:5432/bookshelf_development
```

## test

```
bundle exec rspec spec/requests/root_spec.rb
```
