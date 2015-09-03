<#
.SYNOPSIS
   <A brief description of the script>
.DESCRIPTION
   <A detailed description of the script>
.PARAMETER <paramName>
   <Description of script parameter>
.EXAMPLE
   <An example of using the script>
#>

$webclient = New-Object System.Net.WebClient

md "C:\tmpInstall"
$urlErlang = "http://www.erlang.org/download/otp_win64_18.0.exe"
$urlRabbit = "https://www.rabbitmq.com/releases/rabbitmq-server/v3.5.4/rabbitmq-server-3.5.4.exe"

$fileRabbit = "C:\tmpInstall\rabbitmq-server-3.5.4.exe"
$fileErlang = "C:\tmpInstall\otp_win64_18.0.exe"

If (Test-Path $fileErlang){
  Write-Output "Erlang 18.0 already downloaded."
}Else{
  Write-Output "Erlang 18.0 download started."
  $webclient.DownloadFile($urlErlang,$fileErlang)
}

If (Test-Path $fileRabbit){
  Write-Output "RabbitMQ 3.5.4 already downloaded."
}Else{
  Write-Output "RabbitMQ 3.5.4 download started."
  $webclient.DownloadFile($urlRabbit,$fileRabbit)
}

Start-Process $fileErlang -ArgumentList "/S" -Wait
Write-Output "Erlang 18.0 installed."
Start-Process $fileRabbit -ArgumentList "/S" -Wait
Write-Output "RabbitMQ 3.5.4 installed."

$fileRabbitPlugins = "C:\Program Files (x86)\RabbitMQ Server\rabbitmq_server-3.5.4\sbin\rabbitmq-plugins"
$process = Start-Process $fileRabbitPlugins -ArgumentList "enable rabbitmq_management" -Wait
Write-Output "RabbitMQ Management tool installed."


#if ($setup.exitcode -eq 0)
#write-host "Successfully installed" 