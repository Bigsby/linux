fun(){
    p1=$1
    p2=$2
    p3=$3
    echo $p1 " - " $p2 " - " $p3
}

a=$(fun "the value" "" three)
echo $a