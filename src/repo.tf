resource "github_repository" "terraform-repo" {
  name        = "Created-By-Terraform"
  description = "Created by Terraform"
  visibility  = "public" # or private
}