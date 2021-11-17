terraform {
    backend "azurerm" {}
} 

provider "azurerm"{
  features {}

  # More information on the authentication methods supported by
  # the AzureRM Provider can be found here:
  #  https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

   subscription_id = var.subscription_id 
   client_id       = var.client_id 
   client_secret   = var.client_secret  
   tenant_id       = var.tenant_id 
}
