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

netsh advfirewall firewall add rule "name=Couchbase Web Administration Port" dir=in action=allow protocol=TCP localport=8091
netsh advfirewall firewall add rule "name=Couchbase API Port" dir=in action=allow protocol=TCP localport=8092
netsh advfirewall firewall add rule "name=Couchbase Internal Cluster Port" dir=in action=allow protocol=TCP localport=11209
netsh advfirewall firewall add rule "name=Couchbase Internal Cluster Port" dir=in action=allow protocol=TCP localport=11210
netsh advfirewall firewall add rule "name=Couchbase Client interface (proxy)" dir=in action=allow protocol=TCP localport=11211
netsh advfirewall firewall add rule "name=Couchbase Erlang Port Mapper ( epmd )" dir=in action=allow protocol=TCP localport=4369
netsh advfirewall firewall add rule "name=Couchbase Node data exchange" dir=in action=allow protocol=TCP localport=21100-21199

netsh advfirewall firewall add rule "name=Couchbase Web Administration Port" dir=out action=allow protocol=TCP localport=8091
netsh advfirewall firewall add rule "name=Couchbase API Port" dir=out action=allow protocol=TCP localport=8092
netsh advfirewall firewall add rule "name=Couchbase Internal Cluster Port" dir=out action=allow protocol=TCP localport=11209
netsh advfirewall firewall add rule "name=Couchbase Internal Cluster Port" dir=out action=allow protocol=TCP localport=11210
netsh advfirewall firewall add rule "name=Couchbase Client interface (proxy)" dir=out action=allow protocol=TCP localport=11211
netsh advfirewall firewall add rule "name=Couchbase Erlang Port Mapper ( epmd )" dir=out action=allow protocol=TCP localport=4369
netsh advfirewall firewall add rule "name=Couchbase Node data exchange" dir=out action=allow protocol=TCP localport=21100-21199