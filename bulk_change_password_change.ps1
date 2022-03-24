$acc = get-localuser | Where-Object {$_.Enabled -eq "True"}
$accnames = $acc.Name
$pass = 'password'
$SECPass = ConvertTo-SecureString $pass -AsPlainText -Force

ForEach ($accname in $accnames) 
{
    Set-LocalUser $accname -Password $SECPass
}