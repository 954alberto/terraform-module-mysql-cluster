resource "kubernetes_namespace" "namespace" {
  metadata {
    name = var.namespace
  }
}

data "helm_repository" "presslabs" {
  name = "presslabs"
  url  = "https://presslabs.github.io/charts"
}

resource "helm_release" "mysql-cluster" {
  namespace  = var.namespace
  name       = var.name
  chart      = "presslabs/mysql-cluster"
  version    = var.chart_version
  values     = [var.helm_values]
  timeout    = 1200
}