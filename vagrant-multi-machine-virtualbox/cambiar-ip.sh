if [ $1 -eq 0 ]
then
    sudo sed -i 's/#addresses: \[192.168.0.7\/24\]/addresses: \[192.168.0.7\/24\]/g' /etc/netplan/01-network-manager-all.yaml

    sudo sed -i 's/addresses: \[192.168.1.7\/24\]/#addresses: \[192.168.1.7\/24\]/g' /etc/netplan/01-network-manager-all.yaml

    sudo sed -i 's/#gateway4: 192.168.0.1/gateway4: 192.168.0.1/g' /etc/netplan/01-network-manager-all.yaml

    sudo sed -i 's/gateway4: 192.168.1.1/#gateway4: 192.168.1.1/g' /etc/netplan/01-network-manager-all.yaml

    sudo netplan generate

    sudo netplan apply

    sudo netplan apply
elif [ $1 -eq 1 ]
then
    sudo sed -i 's/#addresses: \[192.168.1.7\/24\]/addresses: \[192.168.1.7\/24\]/g' /etc/netplan/01-network-manager-all.yaml

    sudo sed -i 's/addresses: \[192.168.0.7\/24\]/#addresses: \[192.168.0.7\/24\]/g' /etc/netplan/01-network-manager-all.yaml

    sudo sed -i 's/#gateway4: 192.168.1.1/gateway4: 192.168.1.1/g' /etc/netplan/01-network-manager-all.yaml

    sudo sed -i 's/gateway4: 192.168.0.1/#gateway4: 192.168.0.1/g' /etc/netplan/01-network-manager-all.yaml

    sudo netplan generate

    sudo netplan apply

    sudo netplan apply
fi