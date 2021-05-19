### Development commands

Create rails application
````
rails new mat-views-app -d postgresql --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-job --skip-action-cable --skip-sprockets --skip-bundle --skip-test --skip-system-test
````
Create required models, controllers and views
````
rails g model Player name position
````
````
rails g model Team name
````
````
rails g model Match team:references team:references match_time:timestamp season:string:index
````
````
rails g model Goal match:references team:references player:references period minute second
````
````
rails g model Goal match:references team:references player:references period minute second
````
````
rails g controller top_scorers
````
````
rails g scenic:model top_scorers --materialized
````
Create and seed DB
````
docker run --name mat_views_db -p 5432:5432 -e POSTGRES_DB=mat_views_db_dev -e POSTGRES_PASSWORD=dev -e POSTGRES_USER=dev -d postgres
````
````
rails db:migrate
````
````
rails db:seed
````
