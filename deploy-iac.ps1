param (
    [string]$ResourceGroupName = "pbIaCLabRG",
    [string]$TemplateFile = "C:\Users\User\Desktop\IacLab\webapp.bicep"  # Corrected potential typo in path
)

Write-Host "Starting deployment to resource group: $ResourceGroupName"

try {
    # Run the Azure deployment command
    $deployment = New-AzResourceGroupDeployment `
        -ResourceGroupName $ResourceGroupName `
        -TemplateFile $TemplateFile `
        -Verbose

    Write-Host "Deployment complete. Review resources in the Azure Portal."
} catch {
    Write-Host "Deployment failed: $_"
}
