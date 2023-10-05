/*
resource "github_branch" "feature/one" {
  repository    = github_repository.terraform-repo.name
  branch        = "feature/one"
  source_branch = "master" # checkout from 'master'
}

resource "github_branch" "feature/two" {
  repository    = github_repository.terraform-repo.name
  branch        = "feature/two"
  source_branch = "master" # checkout from 'master'
}
*/