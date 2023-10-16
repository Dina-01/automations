param($duration = 60) 

$myshell = New-Object -com "Wscript.Shell"  
$lc = $duration 

$dt = get-date -displayhint time 
write-host $dt 

Write-Progress -PercentComplete (0) -Activity "Timer" -Status "0% complete"

for ($i = 0; $i -lt $lc ; $i++) { 
    $myshell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Milliseconds  100
    $myshell.sendkeys("{SCROLLLOCK}")
    Start-Sleep -Seconds 60

    $cp = [math]::Ceiling((($i+1)/($lc)*100))
    Write-Progress -PercentComplete $cp -Activity "Timer" -Status "$cp% complete"
} 

$dt = get-date -displayhint time 
write-host $dt 
