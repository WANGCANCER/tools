function show_port () {
   local id=$1
   nova interface-list $id|awk 'NR==4{print $4}'
}
show_port $1


