function show_security_group () {
   local id=$1
   port=`nova interface-list $id|awk 'NR==4{print $4}'`
   proton port-show $port|grep security_groups |awk {'print $4'}
}
show_security_group $1


