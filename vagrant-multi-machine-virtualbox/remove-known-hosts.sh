if [ -d /home ]; 
then
    rm "/home/$USER/.ssh/known_hosts"
    echo "known_hosts eliminado en Linux"
elif [ -d /c/Users ]; then
# else
    rm /c/Users/$USERNAME/.ssh/known_hosts
    echo "known_hosts eliminado en Windows"
fi