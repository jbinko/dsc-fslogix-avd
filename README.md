# dsc-fslogix-avd
This is DSC provider to configure registry keys for FSLogix

## Release

```PowerShell
Compress-Archive -Path "./dsc-fslogix-avd.ps1" -DestinationPath "FSLogixAVD.zip" -CompressionLevel "Optimal"
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
