provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "webapp_rg" {
  name     = "webapp-resource-group"
  location = "East US"
}

resource "azurerm_app_service_plan" "webapp_plan" {
  name                = "webapp-service-plan"
  location            = azurerm_resource_group.webapp_rg.location
  resource_group_name = azurerm_resource_group.webapp_rg.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = "flask-web-app-demo"
  location            = azurerm_resource_group.webapp_rg.location
  resource_group_name = azurerm_resource_group.webapp_rg.name
  app_service_plan_id = azurerm_app_service_plan.webapp_plan.id

  site_config {
    python_version = "3.11"
  }

  app_settings = {
    "WEBSITES_PORT" = "8080"
  }
}

output "webapp_url" {
  value = azurerm_app_service.webapp.default_site_hostname
}
