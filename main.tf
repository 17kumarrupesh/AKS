# Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create AKS Cluster
resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.cluster_name
  location             = azurerm_resource_group.rg.location
  resource_group_name  = azurerm_resource_group.rg.name

  default_node_pool {
    name      = var.cluster_name
    node_count = var.number_of_nodes
    vm_size   = var.node_vm_size
  }
}

# Outputs for reference
output "cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "resource_group" {
  value = azurerm_kubernetes_cluster.aks.resource_group_name
}

output "kubeconfig" {
  value = base64decode(azurerm_kubernetes_cluster.aks.kube_config)
}
