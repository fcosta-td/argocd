provider "argocd" {
  server_addr = "localhost:8080" # env ARGOCD_SERVER
  #auth_token  = "1234..."          # env ARGOCD_AUTH_TOKEN
  username = "admin"     # env ARGOCD_AUTH_USERNAME
  password = "teste123." # env ARGOCD_AUTH_PASSWORD
  insecure = true        # env ARGOCD_INSECURE
}
