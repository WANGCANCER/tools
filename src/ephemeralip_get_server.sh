function ephemeral_get_server () {
  fixedip_id=$(proton ephemeral-ip-list|grep $1|awk {'print $8'})
  fixedip_address=$(proton fixed-ip-show $fixedip_id|grep ip_address|awk {'print $4'})
  nova list|grep $fixedip_address
}
ephemeral_get_server $1
