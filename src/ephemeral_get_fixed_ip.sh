function get_fixed_ip () {
  local external_ip=$1
  fixed_id=`proton ephemeral-ip-list|grep $external_ip|awk {'print $12'}`
  fixed_ip=`proton fixed-ip-show $fixed_id|grep -o -P "(\d+\.)(\d+\.)(\d+\.)\d+"`
  echo $fixed_ip
}
get_fixed_ip $1

