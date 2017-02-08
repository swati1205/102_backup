#!powershell
# This file is part of Ansible
#
# Ansible is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# Ansible is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License 
# along with Ansible.  If not, see <http://www.gnu.org/licenses/>.
# WANT_JSON
# POWERSHELL_COMMON
$ErrorActionPreference = "Stop"
$params = Parse-Args $args
$TargetValue = Get-AnsibleParam -obj $params -name "choice" -failifempty $true
$result = New-Object psobject @{
 changed = $FALSE
}
try 
{
if($TargetValue.EndsWith("C"))
{
$cel=$TargetValue
[int]$celcius=$cel.TrimEnd("C")
[int]$far=([int]$celcius * 1.8)+32
Write-Host "The temperature $far"
#Set-Attr $result.win_tempconvert "far"
$result.changed = $TRUE
}
elseif($TargetValue.EndsWith("F"))
{
$far1=$TargetValue
[int]$farhen=$far1.TrimEnd("F")
[int]$cel1=([int]$farhen-32)/1.8
Write-Host "The temperature $cel1"
$result.changed = $TRUE
}

else
{

Fail-Json (New-Object psobject) "wrong arguments"
$result.changed = $FALSE
}
}
catch
{
Fail-Json $result $_.Exception.Message
}
Exit-Json $result
