resource "kubernetes_manifest" "service" {
  manifest = yamldecode(file("../deploy.yml"))
}

