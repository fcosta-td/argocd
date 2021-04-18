resource "argocd_application" "app-of-apps" {
  metadata {
    name      = "app-of-apps"
    namespace = "argocd"
    labels = {
      app-of-apps = true
    }
  }

  spec {
    project = "default"

    source {
      repo_url        = "https://github.com/fcosta-td/argocd-demo.git"
      path            = "applications"
      target_revision = "main"
    }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = "default"
    }

    sync_policy {
      automated = {
        prune     = true
        self_heal = true
      }
      sync_options = ["Validate=false"]
    }
  }
}
