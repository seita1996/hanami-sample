# hamani sample

[V2.0: Getting Started | Hanami Guides](https://guides.hanamirb.org/v2.0/introduction/getting-started/)

=> Listing books test does not pass...

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
DATABASE_URL=postgres://postgres:password@db:5432/bookshelf_development
```

## test

```
bundle exec rspec spec/requests/root_spec.rb
```
