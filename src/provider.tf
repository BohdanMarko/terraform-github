terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.39.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = "" # or `GITHUB_TOKEN` ENV_VARIABLE
    owner = "BohdanMarko" # or `GITHUB_OWNER` ENV_VARIABLE -- github username
}