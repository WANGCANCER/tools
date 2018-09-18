local id=$1
port=`nova interface-list $id|awk 'NR==4{print $4}'`
fixip=`proton port-show $port| grep fixed_ips | awk -F '{"id":' '{print $2}' | awk -F '"' '{print $2}'`
proton ephemeral-ip-create internet $fixip 1000 1000
