variable "name" {
  description = "Name of the Helm release"
}
variable "namespace" {
  description = "Name of the namespace to create"
}
variable "helm_values" {
  description = "Values file to use in the helm release"
}
variable "chart_version" {
  description = "Version of the chart to use in the helm release"
}