
# Assign arguments to variables
num1=$1

# Check if valid phone number
if [ "$num1" -lt 1000000000 ] || [ "$num1" -gt 9999999999 ]; then
    echo "Error: Invalid phone number"
    exit 1
fi


echo "Child script completed successfully."
