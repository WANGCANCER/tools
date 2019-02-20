port=`nova interface-list $1|awk 'NR==4{print $4}'`
fixip=`proton port-show $port| grep fixed_ips | awk -F '{"id":' '{print $2}' | awk -F '"' '{print $2}'`
floating_ip=`proton floating-ip-create 100 100|grep id|awk 'NR==1{print $4}'`
proton floating-ip-associate $floating_ip $fixip
