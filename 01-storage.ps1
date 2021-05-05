$rg = 'arm-introduction-01'
New-AzResourceGroup -Name $rg -Location northeurope -Force

New-AzResourceGroupDeployment `
    -Name 'new-storage' `
    -ResourceGroupName $rg `
    -TemplateFile '01-storage.json' `
    -storageName 'storageaccountarmawdemo2'`
    -storageSKU 'Standard_GRS2'