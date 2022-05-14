# certificado e config do kubernetes

output "client_certificate" {
    value = azurerm_kubernetes_cluster.sena.kube_config.0.client_certificate
    # To reduce the risk of accidentally exporting sensitive data that was intended to be only internal.
    sensitive = true
}

output "kube_config" {
    value = azurerm_kubernetes_cluster.sena.kube_config_raw
    sensitive = true
}