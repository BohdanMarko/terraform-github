resource "github_repository" "terraform-repo" {
  name        = "Created-By-Terraform"
  description = "Created by Terraform"
  visibility  = "public" # or private
}

resource "github_branch" "feature-one" {
  repository    = github_repository.terraform-repo.name
  branch        = "feature-one"
  source_branch = "master" # checkout from 'master'
}

resource "github_branch" "feature-two" {
  repository    = github_repository.terraform-repo.name
  branch        = "feature-two"
  source_branch = "master" # checkout from 'master'
}

resource "github_repository_file" "config-file" {
  repository          = github_repository.terraform-repo.name
  branch              = "master"
  file                = "Web.config"
  # "heredoc" multi-line template syntax
  content             = <<EOT
<appSettings>
		<add key="ConnectionString" value="value" />
		<add key="ConnectionStringAdditionalDB" value="value" />
</appSettings>
EOT
  commit_message      = "commit by Terraform"
  commit_author       = "Bohdan Marko"
  commit_email        = "bohdan.marko.228@gmail.com"
  overwrite_on_create = true
}