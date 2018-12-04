resource "heroku_addon" "development_database" {
  app  = "${heroku_app.development.name}"
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "staging_database" {
  app  = "${heroku_app.staging.name}"
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_addon" "production_database" {
  app  = "${heroku_app.production.name}"
  plan = "heroku-postgresql:hobby-dev"
}
