monitor() {
    while true; do
        read -p "Enter the Phone number:" phone

        #Running the child script now.
        ./child.sh "$phone" &

        child_pid=$! # Capture the PID of the child process

        echo "Started child process with PID: $child_pid"

        # Wait for the child process to finish or crash
        wait $child_pid

        # Check the exit status of the child process
        exit_status=$?

        # Check if child script exited successfully (example: exit status 0)
        if [ $exit_status -eq 0 ]; then
            echo "You are ready to proceed"
            break
        else
            echo "Please try again with a 10 digit number"
        fi
    done
}

# Start taking user input
monitor