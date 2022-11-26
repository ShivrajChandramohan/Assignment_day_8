#!/bin/bash -x

o=0
t=0
th=0
f=0
fv=0
s=0

declare -A Diceroll

while (($o<10 && $t<10 && $th<10 && $f<10 && $fv<10 && $s<10))
do

	dice_roll=$((RANDOM%6+1))
	case $dice_roll in
			1)
			echo 1
			((o++))
			;;
			2)
			echo 2
			((t++))
			;;
			3)
			echo 3
			((th++))
			;;
			4)
			echo 4
			((f++))
			;;
			5)
			echo 5
			((fv++))
			;;
			6)
			echo 6
			((s++))
			;;
	esac
done
	echo "total one:"$o
	echo "total two:"$t
	echo "total three:"$th
	echo "total four:"$f
	echo "total five:"$fv
	echo "total six:"$s

	arr=($o,$t,$th,$f,$fv,$s)
	echo ${arr[@]}

if (($o>$t & $o>$th & $o>$f & $o>$fv & $o>$s))
then
        echo "1 comes maximum times"
fi
if(($o<$t & $o<$th & $o<$f & $o<$fv & $o<$s))
then
        echo "1 comes minimum times"
fi
if (($t>$o & $t>$th & $t>$f & $t>$fv & $t>$s))
then
        echo "2 comes maximum times"
fi
if (($t<$o & $t<$th & $t<$f & $t<$fv & $t<$s))
then
        echo "2 comes minimum times"
fi
if (($th>$o & $th>$t & $th>$f & $th>$fv & $th>$s))
then
        echo "3 comes maximum times"
fi
if (($th<$o & $th<$t & $th<$f & $th<$fv & $th<$s))
then
        echo "3 comes minimum times"
fi
if (($f>$o & $f>$t & $f>$th & $f>$fv & $f>$s))
then
        echo "4 comes maximum times"
fi
if (($f<$o & $f<$t & $f<$th & $f<$fv & $f<$s))
then
        echo "4 comes minimum times"
fi
if (($fv>$o & $fv>$t & $fv>$th & $fv>$f & $fv>$s))
then
        echo "5 comes maximum times"
fi
if (($fv<$o & $fv<$t & $fv<$th & $fv<$f & $fv<$s))
then
        echo "5 comes minimum times"
fi
if (($s>$o & $s>$t & $s>$th & $s>$f & $s>$fv))
then
        echo "6 comes maximum times"
fi
if (($s<$o & $s<$t & $s<$th & $s<$f & $s<$fv))
then
        echo "6 comes minimum times"
fi

	Diceroll=$arr
	echo ${Diceroll[@]}
	echo ${!Diceroll[@]}
	echo ${#Diceroll[@]}
