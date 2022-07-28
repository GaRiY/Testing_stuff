provider "github" {
    owner = "GaRiY"
    token = "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"
}

resource "github_repository" "example_repo" {
  name = "example"
  description = "My awesome repo."

  visibility = "private"

  template {
    owner = "GaRiY"
    repository = "test_template"
  }
}