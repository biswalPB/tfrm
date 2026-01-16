param location string = 'chilecentral'
param appServicePlanName string = 'pb1bicepAppServicePlan-cli123'
param webAppName string = 'pb1bicepWebAppDemo-cli123'

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: appServicePlanName   // Reference the appServicePlanName parameter
  location: location         // Reference the location parameter
  sku: {
    name: 'F1'
    capacity: 1
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName           // Reference the webAppName parameter
  location: location         // Reference the location parameter
  properties: {
    serverFarmId: appServicePlan.id  // Link the web app to the app service plan
  }
}
