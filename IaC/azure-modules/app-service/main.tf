data "azurerm_resource_group" "resource_group" {
  name     = var.rg_name #"TestGroup"
  location = var.region #"East US 2"
}

resource "azurerm_app_service_plan" "testapp" {
  name                = var.app_plan #"test-appserviceplan"
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  # mode="free"

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "weatherman" {
  name                = var.app_name
  location            = data.azurerm_resource_group.resource_group.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  app_service_plan_id = azurerm_app_service_plan.testapp.id

  site_config {
    dotnet_framework_version = var.dotnet_version #"v4.0"
    scm_type                 = var.scm_type #"LocalGit"
  }


}