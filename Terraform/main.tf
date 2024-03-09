#Aqui foram usados valores ficticios para popular as chamadas dos modulos

module "azure" {
  source = "./modules/azure"
  subscription_id = "id_da_azure"
  client_id       = "id_da_api"
  client_secret   = "senha"
  tenant_id       = "id_tenant"
}

module "kubernetes" {
  source = "./modules/kubernetes"
  cluster_name        = "myAKSCluster"
  location            = "West Europe"
  resource_group_name = "myResourceGroup"
  dns_prefix          = "myAKSCluster"
  node_pool_name      = "default"
  node_count          = 3
  vm_size             = "Standard_D2_v2"
}

module "helm" {
  source = "./modules/helm"
  helm_release_name = "my-psp"
  helm_repository   = "https://kubernetes-charts.storage.googleapis.com/"
  helm_chart        = "pod-security-policy"
}

module "prometheus" {
  source = "./modules/prometheus"
  helm_release_name = "my-prometheus"
  helm_repository   = "https://prometheus-community.github.io/helm-charts"
  helm_chart        = "prometheus"
}

module "grafana" {
  source = "./modules/grafana"
  helm_release_name = "my-grafana"
  helm_repository   = "https://grafana.github.io/helm-charts"
  helm_chart        = "grafana"
}
