/*
resource "github_repository_file" "config-file" {
  repository          = github_repository.terraform-repo.name
  branch              = "master"
  file                = "Web.config"
  # "heredoc" multi-line template syntax
  content             = <<EOT
<appSettings>
		<add key="ConnectString" value="value" />
		<add key="ConnectStringAdditionalDB" value="value" />
</appSettings>
EOT
  commit_message      = "commit by Terraform"
  commit_author       = "Bohdan Marko"
  commit_email        = "bohdan.marko.228@gmail.com"
  overwrite_on_create = true
}
*/