variable "agent_count_default" {
  description = "number of the nodes to default node pool"
  default = 2
}

variable "cluster_name" {
  description = "Name Cluster Kubernetes Azure"
  default = "aks-lab-01"
}

variable "dns_prefix" {
  description = "Name DNS Prefix Cluster"
  default = "aks-lab-01"
}

variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "rg-lab-aks"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "tags" {
  type = map(any)
  default = {
    "Responsável" = "Wiliam de Campos"
    "Projeto"     = "AKS Module"
  }
}

variable "virtual_network_name" {
  description = "Virtual network name"
  default     = "vnet-aks-01"
}

variable "virtual_network_address_prefix" {
  description = "VNET address prefix"
  type        = list(any)
  default     = ["192.168.0.0/16"]
}

variable "aks_subnet_name" {
  description = "Subnet Name."
  default     = "subnet-aks-01"
}

variable "aks_subnet_address_prefix" {
  description = "Subnet address prefix."
  type        = list(any)
  default     = ["192.168.0.0/24"]
}

variable "app_gateway_subnet_address_prefix" {
  description = "Subnet server IP address."
  type        = list(any)
  default     = ["192.168.1.0/24"]
}

variable "aks_service_cidr" {
  description = "CIDR notation IP range from which to assign service cluster IPs"
  default     = "10.0.0.0/16"
}

variable "aks_dns_service_ip" {
  description = "DNS server IP address"
  default     = "10.0.0.10"
}

variable "aks_docker_bridge_cidr" {
  description = "CIDR notation IP for Docker bridge."
  default     = "172.17.0.1/16"
}

variable "aks_pod_cidr" {
  description = "CIDR notation IP for Docker bridge."
  default     = "10.244.0.0/16"
}

variable "acr_name" {
  description = "name Container registry"
  default = "labterraformc2go"
}