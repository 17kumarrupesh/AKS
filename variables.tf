variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type = string
}

variable "location" {
  description = "Location for the AKS cluster"
  type = string
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type = string
}

variable "dns_prefix_name" {
  description = "Name of the AKS "
  type = string
}

variable "node_vm_size" {
  description = "Size of the VMs in the AKS cluster node pool"
  type = string
  default = "B1s"
}

variable "number_of_nodes" {
  description = "Number of nodes in the AKS cluster node pool"
  type = number
  default = "2"
}
