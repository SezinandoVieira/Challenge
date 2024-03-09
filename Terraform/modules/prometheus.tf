resource "helm_release" "prometheus" {
  name       = var.helm_release_name
  repository = var.helm_repository
  chart      = var.helm_chart
}