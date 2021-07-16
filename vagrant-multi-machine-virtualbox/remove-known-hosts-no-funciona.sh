if [ "$HOME" == *"/home"* ]; 
then
    rm "/home/$USER/.ssh/known_hosts"
    echo "known_hosts eliminado en Linux"
elif [ "$HOME" == *"/c"* ]; 
then
    rm /c/Users/$USERNAME/.ssh/known_hosts
    echo "known_hosts eliminado en Windows"
fi