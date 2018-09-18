function get_external_id () {
   local id=$1
   port=`nova interface-list $id|awk 'NR==4{print $4}'`
   externalip=`proton port-show $port| grep services| awk -F '"ip":' '{print $2}' | awk -F '"' '{print $2}'`
   externalid=`proton port-show $port|grep services| awk -F '"id":' '{print $2}' | awk -F '"' '{print $2}'`
   echo $externalid
}
get_external_id $1


