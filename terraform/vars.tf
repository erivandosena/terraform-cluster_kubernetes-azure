# variaveis de autenticação com Azure AKS

# Subscription ID
variable "subscription_id" {
    type = string
    default = "<SUBSCRIPTION-ID>"
}

# Application (client) ID
variable "client_id" {
    type = string
    default = "CLIENT-ID>"
}

# Value
variable "client_secret" {
    type = string
    default = "<VALUE-SECRET>"
}

# Directory (tenant) ID
variable "tenant_id" {
    type = string
    default = "<TENANT-ID>"
}