# Configure Azure Provider
provider "azurerm" {
  features {}

  # Use environment variables for credentials
  client_id       = env("ARM_CLIENT_ID")
  client_secret   = env("ARM_CLIENT_SECRET")
  subscription_id = env("ARM_SUBSCRIPTION_ID")
  tenant_id       = env("ARM_TENANT_ID")
}
