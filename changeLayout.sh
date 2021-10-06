#setxkbmap us
#setxkbmap br
#setxkbmap -query | grep layout

l1='br'
l2='us'
aux=`setxkbmap -query | grep $l1`
echo $aux
if [ -z "$aux" ]
then
    setxkbmap $l1
else    
   setxkbmap $l2
fi