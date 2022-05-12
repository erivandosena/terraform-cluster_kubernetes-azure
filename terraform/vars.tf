# variaveis de autenticação com Azure AKS

variable "subscription_id" {
    type = string
    default = ""
}

# Application (client) ID
variable "client_id" {
    type = string
    default = ""
}

# Value
variable "client_secret" {
    type = string
    default = ""
}

# Directory (tenant) ID
variable "tenant_id" {
    type = string
    default = ""
}