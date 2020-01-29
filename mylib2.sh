#!/bash/bin

IP_VAL=$(hostname -I | awk '{print $1}')
PS=$1
PORTO=$2
PORTT=$3
PORTH=$4

echo $1
echo $2
echo $3
echo $4
