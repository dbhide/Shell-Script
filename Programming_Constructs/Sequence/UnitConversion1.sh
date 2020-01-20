 #!/bin/bash -x
read -p "Enter Value in Inches: " in
feet=`echo "scale=2; $in/12" | bc`
echo $feet 
