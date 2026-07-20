$groups = @("IT", "HR", "Finance", "Sales", "Marketing", "Management")

foreach ($group in $groups) {
    New-ADGroup `
        -Name "GG_$group" `
        -SamAccountName "GG_$group" `
        -GroupCategory Security `
        -GroupScope Global `
        -Path "OU=$group,OU=TechCorp,DC=techcorp,DC=local" `
        -Description "$group Department Security Group"

    Write-Host "Created group: GG_$group" -ForegroundColor Cyan
}