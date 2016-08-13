#$Credential = Get-AutomationPSCredential -Name 'Ratz-powershell' 
#$credential=Get-Credential
  #Add-AzureRmAccount
	#Login-AzureRmAccount
   
$sku = @{           'Name'='B2'
					'Tier'='Basic'
					'Size'='B2'
					'Family'='B'
					'Capacity'='2'                
         }

    $ASPResourceid=@("/subscriptions/bc53ebc2-813d-479b-a53e-0749c81129ac/resourceGroups/a-intelanalytics-eu-n-rwenp-rg/providers/microsoft.web/serverfarms/a-intelanalytics-eu-n-rwenp-wjs-asp")
   foreach($Resourceid in $ASPResourceid)
   {
        $Resourceid
       $ASPResourceObj = get-azurermresource -ResourceId $Resourceid 
       $ASPResourceObj
       set-AzureRmResource -ResourceId $Resourceid -sku $sku -Force
    }
   