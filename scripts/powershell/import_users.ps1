$users = Import-Csv "C:\users.csv"

foreach ($user in $users) {
    New-ADUser `
        -Name $user.Name `
        -SamAccountName $user.Username `
        -UserPrincipalName "$($user.Username)@techcorp.local" `
        -Path "OU=$($user.OU),OU=TechCorp,DC=techcorp,DC=local" `
        -AccountPassword (ConvertTo-SecureString "<SECURE_PASSWORD>" -AsPlainText -Force) `
        -Enabled $true `
        -PasswordNeverExpires $false `
        -ChangePasswordAtLogon $true

    Write-Host "Created: $($user.Username) - $($user.OU)" -ForegroundColor Green
}
