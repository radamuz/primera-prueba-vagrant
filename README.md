# primera-prueba-vagrant

## Comprobar si el equipo soporta virtualización, si resultado > 0, si la soporta, el resultado es el número de hilos:
```bash
grep -Eoc '(vmx|svm)' /proc/cpuinfo
```

## Instalación KVM
1. Instalar dependencias y KVM
```bash
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virtinst virt-manager
```

2. Comprobar si libvirtd se iniciará automáticamente:
```bash
sudo systemctl is-active libvirtd
```

3. Para crear y administrar las máquinas virtuales:
```bash
sudo usermod -aG libvirt $USER
sudo usermod -aG kvm $USER
```

4. Comprobar que se ha creado correctamente adaptador puente:
```console
radamuz@ubuntu:~/primera-prueba-vagrant$ brctl show
bridge name	bridge id		STP enabled	interfaces
virbr0		8000.5254009ff684	yes		virbr0-nic

```