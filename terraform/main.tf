# sudo apt install -y azure-cli
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster

# Configura o Microsoft Azure Provider
provider "azurerm" {
    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret = var.client_secret
    tenant_id = var.tenant_id
    features {}
}

# Provisionamento do Cluster Kubernetes AKS
# az login && az account list-locations
resource "azurerm_resource_group" "sena" {
    name = "erivandosena-rg"
    location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "sena" {
    name = "sena_cluster_aks"
    location = azurerm_resource_group.sena.location
    resource_group_name = azurerm_resource_group.sena.name
    dns_prefix = "k8s_aks_cluster"

    # az login && az vm list-sizes --location 'West Europe' -o table
    default_node_pool {
        name = "k8s_cluster"
        node_count = 3
        vm_size = "Standard_D2_v2"
    }

    identity {
        type = "SystemAssigned"
    }

    tags = {
        Enveronment = "Productiom"
    }

}