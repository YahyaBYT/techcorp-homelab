$users = Import-Csv "C:\users.csv"

foreach ($user in $users) {
    Add-ADGroupMember -Identity "GG_$($user.OU)" -Members $user.Username
    Write-Host "Added $($user.Username) to GG_$($user.OU)" -ForegroundColor Yellow
}