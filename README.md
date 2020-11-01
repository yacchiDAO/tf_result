# README

This is Yacchi's rails api server template on docker

## Environments
- Ruby: 2.7.0
- Rails: 6.0.0
- Database: Postgresql

## Using gem(envs) examples
- redis
- sidekiq
- kaminari
- global
- active_model_serializers
- slim-rials
- unicorn
- config
- rspec
- factory_bot
- pry
- rubocop
...

## Test, Code
- rspec
- rubocop

## Usage
- Clone this repository clone
- Modify each settings yourself
- Run
```sh
  $ docker-compose build
  $ docker-compose run web rails db:create # ridgepole:apply db:seed
  $ docker-compose up
```
