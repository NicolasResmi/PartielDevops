# Create Heroku apps for development, staging and production
resource "heroku_app" "development" {
  name = "devops-development-nr"
  region = "eu"
}

resource "heroku_app" "staging" {
  name = "devops-staging-nr"
  region = "eu"
}

resource "heroku_app" "production" {
  name = "devops-production-nr"
  region = "eu"
}

# Create a Heroku pipeline
resource "heroku_pipeline" "partiel-devops" {
  name = "partiel-devops"
}

resource "heroku_pipeline_coupling" "development" {
  app      = "${heroku_app.development.name}"
  pipeline = "${heroku_pipeline.partiel-devops.id}"
  stage    = "development"
}

# Couple apps to different pipeline stages
resource "heroku_pipeline_coupling" "staging" {
  app      = "${heroku_app.staging.name}"
  pipeline = "${heroku_pipeline.partiel-devops.id}"
  stage    = "staging"
}

resource "heroku_pipeline_coupling" "production" {
  app      = "${heroku_app.production.name}"
  pipeline = "${heroku_pipeline.partiel-devops.id}"
  stage    = "production"
}
