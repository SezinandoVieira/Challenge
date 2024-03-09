
resource "helm_release" "grafana" {
  name       = var.helm_release_name
  repository = var.helm_repository
  chart      = var.helm_chart
}
