Function Reload-Module($ModuleName)
{ 
	$module = Get-Module $ModuleName
	$path = $module.Path
	
	"removing $ModuleName"
	Remove-Module $ModuleName
	
	"importing $path"
	Import-Module $path
}
