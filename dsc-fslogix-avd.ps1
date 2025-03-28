Configuration FSLogixAVD
{
    param (
        [String]
        $CCDLocationsProfiles,
        [String]
        $CCDLocationsODFC
    )

    Import-DSCResource -ModuleName PSDesiredStateConfiguration

    Node localhost
    {
        ## HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles

        Registry CCDLocations {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'CCDLocations'
            Ensure    = 'Present'
            ValueData = $CCDLocationsProfiles
            ValueType = 'String'
        }

        Registry ClearCacheOnLogoff {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'ClearCacheOnLogoff'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry Enabled {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'Enabled'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry DeleteLocalProfileWhenVHDShouldApply {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'DeleteLocalProfileWhenVHDShouldApply'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry FlipFlopProfileDirectoryName {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'FlipFlopProfileDirectoryName'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry HealthyProvidersRequiredForRegister {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'HealthyProvidersRequiredForRegister'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry LockedRetryCount {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'LockedRetryCount'
            Ensure    = 'Present'
            ValueData = 3
            ValueType = 'Dword'
        }

        Registry LockedRetryInterval {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'LockedRetryInterval'
            Ensure    = 'Present'
            ValueData = 15
            ValueType = 'Dword'
        }

        Registry ProfileType {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'ProfileType'
            Ensure    = 'Present'
            ValueData = 0
            ValueType = 'Dword'
        }

        Registry ReAttachIntervalSeconds {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'ReAttachIntervalSeconds'
            Ensure    = 'Present'
            ValueData = 15
            ValueType = 'Dword'
        }

        Registry ReAttachRetryCount {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'ReAttachRetryCount'
            Ensure    = 'Present'
            ValueData = 3
            ValueType = 'Dword'
        }

        Registry SizeInMBs {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'SizeInMBs'
            Ensure    = 'Present'
            ValueData = 32000
            ValueType = 'Dword'
        }

        Registry VolumeType {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'VolumeType'
            Ensure    = 'Present'
            ValueData = 'vhdx'
            ValueType = 'String'
        }

        Registry IsDynamic {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\FSLogix\Profiles'
            ValueName = 'IsDynamic'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        ## HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC

        Registry CCDLocationsODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'CCDLocations'
            Ensure    = 'Present'
            ValueData = $CCDLocationsODFC
            ValueType = 'String'
        }

        Registry ClearCacheOnLogoffODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'ClearCacheOnLogoff'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        
        Registry EnabledODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'Enabled'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry FlipFlopProfileDirectoryNameODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'FlipFlopProfileDirectoryName'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry HealthyProvidersRequiredForRegisterODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'HealthyProvidersRequiredForRegister'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry IncludeTeamsODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'IncludeTeams'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }

        Registry LockedRetryCountODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'LockedRetryCount'
            Ensure    = 'Present'
            ValueData = 3
            ValueType = 'Dword'
        }

        Registry LockedRetryIntervalODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'LockedRetryInterval'
            Ensure    = 'Present'
            ValueData = 15
            ValueType = 'Dword'
        }

        Registry ReAttachIntervalSecondsODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'ReAttachIntervalSeconds'
            Ensure    = 'Present'
            ValueData = 15
            ValueType = 'Dword'
        }

        Registry ReAttachRetryCountODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'ReAttachRetryCount'
            Ensure    = 'Present'
            ValueData = 3
            ValueType = 'Dword'
        }

        Registry SizeInMBsODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'SizeInMBs'
            Ensure    = 'Present'
            ValueData = 32000
            ValueType = 'Dword'
        }

        Registry VolumeTypeODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'VolumeType'
            Ensure    = 'Present'
            ValueData = 'vhdx'
            ValueType = 'String'
        }

        Registry IsDynamicODFC {
            Key       = 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\FSLogix\ODFC'
            ValueName = 'IsDynamic'
            Ensure    = 'Present'
            ValueData = 1
            ValueType = 'Dword'
        }
    }
}
