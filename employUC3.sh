read -p "Enter the wage per hour": n
read -p "Enter the Full day hour": m
echo Dailywage= $(($n*$m))
echo "$Dailywage"
