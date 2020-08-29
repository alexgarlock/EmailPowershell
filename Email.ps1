##This is simple code to send an email from setting up an event in windows. 

$secret = ConvertTo-SecureString "password" -AsPlainText -Force
$techCreds = New-Object System.Management.Automation.PSCredential("username",$secret)

$SMTPServer= "smtp.com"
$From = "alex@alex.com"
$To = "alex.garlock@yahoo.com","alexgarlock@me.com"
$Subject = "Test email"
$Body = "This is a test to see if we can send an email"

Send-MailMessage -From $From -To $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer  -Credential $techCreds 