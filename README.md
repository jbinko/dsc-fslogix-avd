# dsc-fslogix-avd
This is DSC provider to configure registry keys for FSLogix

For FSLogix we cannot use DSC based Machine Config Policy because it has latencya and doesn't support dynamic configuration (identify region on the fly - that would require tag with region pass as parameter into the policy).:

## Release

```PowerShell
Compress-Archive -Path "./dsc-fslogix-avd.ps1" -DestinationPath "FSLogixAVD.zip" -CompressionLevel "Optimal"
```

## Usage

```PowerShell
$json =  @'
{
    "ModulesUrl": "https://github.com/jbinko/dsc-fslogix-avd/raw/main/FSLogixAVD.zip",
    "ConfigurationFunction": "dsc-fslogix-avd.ps1\\FSLogixAVD",
    "Properties": {
        "CCDLocationsProfiles": "type=smb,name=\"eu\",connectionString=\\\\nfeu-bd09.myfsl.local\\fsl\\Profiles;type=smb,name=\"eus\",connectionString=\\\\nfeus-551d.myfsl.local\\fsl\\Profiles;type=smb,name=\"wus\",connectionString=\\\\nfwus-48b2.myfsl.local\\fsl\\Profiles", 
        "CCDLocationsODFC": "type=smb,name=\"eu\",connectionString=\\\\nfeu-bd09.myfsl.local\\fsl\\ODFC;type=smb,name=\"eus\",connectionString=\\\\nfeus-551d.myfsl.local\\fsl\\ODFC;type=smb,name=\"wus\",connectionString=\\\\nfwus-48b2.myfsl.local\\fsl\\ODFC"
    }
}
'@

az vm extension set --name DSC --publisher Microsoft.Powershell --version 2.77 --vm-name my_vm_name --resource-group my_rg_name --settings $json
 ```

## Compile / Test (Not for Release)

```PowerShell
Install-Module -Name PSDscResources

. ./dsc-fslogix-avd.ps1
FSLogixAVD -CCDLocationsProfiles "XXXXXXXX" -CCDLocationsODFC "YYYYYY"

Start-DscConfiguration -Path ./FSLogixAVD -ComputerName localhost -Verbose -Wait
```

```json
"properties": {
            "publisher": "Microsoft.Powershell",
            "type": "DSC",
            "typeHandlerVersion": "2.11",
            "autoUpgradeMinorVersion": true,
            "settings": {
              "ModulesUrl": "[concat(parameters('dsc_url'),'/FSLogixAVD.zip')]",
              "ConfigurationFunction": "dsc-fslogix-avd.ps1\\FSLogixAVD",
              "Properties": {
                "CCDLocationsProfiles": "[parameters('profiles')]",
                "CCDLocationsODFC": "[parameters('odfc')]",
              }
            }
          }
```

## Links

https://learn.microsoft.com/en-us/powershell/dsc/how-tos/configurations/write-and-compile?view=dsc-2.0
https://www.red-gate.com/simple-talk/sysadmin/powershell/powershell-desired-state-configuration-the-basics/
