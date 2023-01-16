r=$(($RANDOM%2))
if [ $r -eq 1 ]
then
    echo "Employee is present"
else
    echo "Employee  is absent"
fi
read -p "Enter the wage per hour": n
read -p "Enter the Full day hour": m
echo Dailywage= $(($n*$m))
echo "$Dailywage"
read  -p "Enter the part time hour": p
echo Part time wage =$(($n*$p))
perHourSalary=20;
workingHour=8;
for (( day=1; day<=20 ;day++))
do
        isPresent=$((RANDOM%3));
        case $isPresent in
                0)
                #echo "Employee is absent";
                workingHour=0;
                ;;

                1)
                #echo "Employee is present";
                workingHour=8;
                ;;

                2)
                #echo "Employee is working as part time";
                workingHour=8;
                ;;
        esac
        salary=$(($perHourSalary * $workingHour));
        totalSalary=$(($totalSalary + $salary));
        workinghour=$(($workingHour * $day));
done

echo "Employee has earned $totalSalary $ in a month";
echo "Employee $workinghour in a month";
declare -A Wage=([Day1 wage]="$Dailywage" [total wage]="$totalSalary")
for key in ${Wage[@]}
do
echo $key ${Wage[$key]}
done
declare -A  Day=([Day]="Monday" [Day1 Wage]="$Dailywage" [total wage]="$totalSalary")
echo ${Day[*]}
