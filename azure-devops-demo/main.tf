resource "azuredevops_project" "Crowe-DevOps-Assessment" {
  name        = "Crowe-DevOps-Assessment"
  description = "Test Project Description"
}
resource "azuredevops_git_repository" "crowe-devops-assessment-backend" {
  project_id     = azuredevops_project.Crowe-DevOps-Assessment.id
  name           = "crowe-devops-assessment-backend"
  default_branch = "refs/heads/main"
  initialization {
    init_type   = "Import"
    source_type = "Git"
    source_url  = "https://github.com/michael-baraboo/senior-devops-assessment.git"
  }

}
resource "azuredevops_git_repository" "crowe-senior-devops-assessment-frontend" {
  project_id     = azuredevops_project.Crowe-DevOps-Assessment.id
  name           = "crowe-senior-devops-assessment-frontend"
  default_branch = "refs/heads/main"
  initialization {
    init_type   = "Import"
    source_type = "Git"
    source_url  = "https://github.com/michael-baraboo/senior-devops-assessment.git"
  }
}


